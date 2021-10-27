#include "tcp_sender.hh"

#include "tcp_config.hh"

#include <random>

// Dummy implementation of a TCP sender

// For Lab 3, please replace with a real implementation that passes the
// automated checks run by `make check_lab3`.

using namespace std;

//! \param[in] capacity the capacity of the outgoing byte stream
//! \param[in] retx_timeout the initial amount of time to wait before retransmitting the oldest outstanding segment
//! \param[in] fixed_isn the Initial Sequence Number to use, if set (otherwise uses a random ISN)
TCPSender::TCPSender(const size_t capacity, const uint16_t retx_timeout, const std::optional<WrappingInt32> fixed_isn)
    : _isn(fixed_isn.value_or(WrappingInt32{random_device()()}))
    , _initial_retransmission_timeout{retx_timeout}
    , _stream(capacity)
    , _current_retransmission_timeout(retx_timeout){}

uint64_t TCPSender::bytes_in_flight() const { return _bytes_in_flight; }
//填充窗口
void TCPSender::fill_window() {
    //第一次握手
    if (!_syn){
        TCPSegment seg;
        _syn = true;
        seg.header().syn = true;
        send_segment(seg);
        return;
    }
    size_t win_size = _win_size > 0 ? _win_size : 1;
    size_t remain;
    //只要窗口中有新的字节要读取并且有可用空间
    while(((remain = (win_size - (_next_seqno - _recv_ackno)))!=0) && !_fin){
        size_t size = min(TCPConfig::MAX_PAYLOAD_SIZE,remain);
        TCPSegment seg;
        seg.payload() = Buffer(_stream.read(size));
        //已经没有数据，通信结束
        if (_stream.eof() && seg.length_in_sequence_space() < win_size){
            _fin = true;
            seg.header().fin = true;
        }
        if (seg.length_in_sequence_space() == 0){
            return ;
        }
        send_segment(seg);
    }
}

void TCPSender::send_segment(TCPSegment &seg) {
    seg.header().seqno = next_seqno();
    _next_seqno += seg.length_in_sequence_space();
    _bytes_in_flight += seg.length_in_sequence_space();
    _segments_has_out.push(seg);
    _segments_out.push(seg);
    if (!_time_running){
        _time = 0;
        _time_running = true;
    }
}

//! \param ackno The remote receiver's ackno (acknowledgment number)
//! \param window_size The remote receiver's advertised window size
//! \returns `false` if the ackno appears invalid (acknowledges something the TCPSender hasn't sent yet)
//如果ackno显示无效则返回false(确认TCPSender尚未发送的内容)
bool TCPSender::ack_received(const WrappingInt32 ackno, const uint16_t window_size) {
    size_t abs_ackno = unwrap(ackno, _isn, _recv_ackno);
    //确认发送尚未发送的数据，则返回false
    if (abs_ackno > next_seqno_absolute()){
        return false;
    }
    //剩余窗口大小
    _win_size = window_size;
    //确认已经收到的数据，返回true
    if (abs_ackno <= _recv_ackno){
        return true;
    }
    //接收确认序号
    _recv_ackno = abs_ackno;
    //检查未完成段的集合
    while(!_segments_has_out.empty()){
         TCPSegment seg = _segments_has_out.front();
         //如果已经完全确认，就从未完成的队列中删去
         //确认号大于段中的所有序号
        if (unwrap(seg.header().seqno, _isn, _next_seqno) + seg.length_in_sequence_space() <= abs_ackno){
            _bytes_in_flight -= seg.length_in_sequence_space();
            _segments_has_out.pop();
        }else{
            break;
        }
    }
    //填充窗口
    fill_window();
    _current_retransmission_timeout = _initial_retransmission_timeout;
    _resend_times = 0;
    if (!_segments_has_out.empty()){
        _time_running = true;
        _time = 0;
    }
    return true;
}

//! \param[in] ms_since_last_tick the number of milliseconds since the last call to this method
void TCPSender::tick(const size_t ms_since_last_tick) {
    _time += ms_since_last_tick;
    // 超时重传
    if (_time >= _current_retransmission_timeout && !_segments_has_out.empty()){
        _segments_out.push(_segments_has_out.front());
        _resend_times ++;
        _current_retransmission_timeout *= 2;
        _time_running = true;
        _time = 0;
    }
    //已经全部发送成功
    if (_segments_has_out.empty()){
        _time_running = false;
    }
}

unsigned int TCPSender::consecutive_retransmissions() const { return _resend_times; }

void TCPSender::send_empty_segment() {
    TCPSegment seg;
    seg.header().seqno = next_seqno();
    _segments_out.push(seg);
}