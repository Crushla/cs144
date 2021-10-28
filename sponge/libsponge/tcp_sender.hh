#ifndef SPONGE_LIBSPONGE_TCP_SENDER_HH
#define SPONGE_LIBSPONGE_TCP_SENDER_HH

#include "byte_stream.hh"
#include "tcp_config.hh"
#include "tcp_segment.hh"
#include "wrapping_integers.hh"

#include <functional>
#include <queue>

//! \brief The "sender" part of a TCP implementation.

//! Accepts a ByteStream, divides it up into segments and sends the
//! segments, keeps track of which segments are still in-flight,
//! maintains the Retransmission Timer, and retransmits in-flight
//! segments if the retransmission timer expires.
class TCPSender {
  private:
    //我们的初始序列号，也就是SYN的序列号。
    //! our initial sequence number, the number for our SYN.
    WrappingInt32 _isn;

    //TCPSender希望发送的段的出站队列
    //! outbound queue of segments that the TCPSender wants sent
    std::queue<TCPSegment> _segments_out{};
    //重传计时器
    //! retransmission timer for the connection
    unsigned int _initial_retransmission_timeout;
    //尚未发送的输出字节流
    //! outgoing stream of bytes that have not yet been sent
    ByteStream _stream;
    //要发送的下一个字节的(绝对)序列号
    //! the (absolute) sequence number for the next byte to be sent
    uint64_t _next_seqno{0};

    bool _syn = false;
    bool _fin = false;
    uint16_t _win_size = 0;
    uint64_t _recv_ackno = 0;
    //计时开始
    bool _time_running = false;
    //开始发送到现在的时间
    size_t _time{0};
    //重传次数
    unsigned int _resend_times{0};
    //当前的RTO值
    unsigned int _current_retransmission_timeout = 0;
    //已经发送的部分,会被存入该队列
    std::queue<TCPSegment> _segments_has_out{};
    //尚未确认的序列号数
    uint64_t _bytes_in_flight = 0;
  public:
    //! Initialize a TCPSender
    TCPSender(const size_t capacity = TCPConfig::DEFAULT_CAPACITY,
              const uint16_t retx_timeout = TCPConfig::TIMEOUT_DFLT,
              const std::optional<WrappingInt32> fixed_isn = {});

    //! \name "Input" interface for the writer
    //!@{
    ByteStream &stream_in() { return _stream; }
    const ByteStream &stream_in() const { return _stream; }
    //!@}

    //! \name Methods that can cause the TCPSender to send a segment
    //!@{

    //! \brief A new acknowledgment was received
    // 收到了新的确认
    bool ack_received(const WrappingInt32 ackno, const uint16_t window_size);
    //生成一个空的有效负载段(用于创建空的ACK段)
    //! \brief Generate an empty-payload segment (useful for creating empty ACK segments)
    void send_empty_segment();
    //创建和发送段，以填满尽可能多的窗口
    //! \brief create and send segments to fill as much of the window as possible
    void fill_window(bool b);

    void send_segment(TCPSegment &seg);
    //通知TCPSender时间的流逝
    //! \brief Notifies the TCPSender of the passage of time
    void tick(const size_t ms_since_last_tick);
    //!@}

    //! \name Accessors
    //!@{

    //! \brief How many sequence numbers are occupied by segments sent but not yet acknowledged?
    //! \note count is in "sequence space," i.e. SYN and FIN each count for one byte
    //! (see TCPSegment::length_in_sequence_space())
    //发送的但尚未确认的段占用了多少序列号
    size_t bytes_in_flight() const;

    //! \brief Number of consecutive retransmissions that have occurred in a row
    //在一行中连续发生的重传次数
    unsigned int consecutive_retransmissions() const;

    //! \brief TCPSegments that the TCPSender has enqueued for transmission.
    //! \note These must be dequeued and sent by the TCPConnection,
    //! which will need to fill in the fields that are set by the TCPReceiver
    //! (ackno and window size) before sending.
    //TCPSender已排队等待传输的TCPSegments。
    std::queue<TCPSegment> &segments_out() { return _segments_out; }
    //!@}

    //! \name What is the next sequence number? (used for testing)
    //!@{

    //! \brief absolute seqno for the next byte to be sent
    //下一个绝对序列号
    uint64_t next_seqno_absolute() const { return _next_seqno; }

    //! \brief relative seqno for the next byte to be sent
    //要发送的下一个字节的seqno
    WrappingInt32 next_seqno() const { return wrap(_next_seqno, _isn); }
    //!@}
};

#endif  // SPONGE_LIBSPONGE_TCP_SENDER_HH
