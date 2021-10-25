#include "tcp_receiver.hh"

// Dummy implementation of a TCP receiver

// For Lab 2, please replace with a real implementation that passes the
// automated checks run by `make check_lab2`.

using namespace std;

bool TCPReceiver::segment_received(const TCPSegment &seg) {
    const TCPHeader tcpHeader = seg.header();
    //listen
    if (tcpHeader.syn){
        //如果已经建立连接
        if (_syn){
            return false;
        }
        //第一次建立连接
        _syn = true;
        _isn = tcpHeader.seqno;
    }
    if (_syn){
        //存储数据
        string str = seg.payload().copy();
        bool _eof = false;

        if (tcpHeader.fin){
            //如果已经断开连接
            if (_fin){
                return false;
            }
            //第一次断开连接
            _eof = true;
            _fin = true;
        }

        uint64_t seqno = unwrap(tcpHeader.seqno, WrappingInt32(_isn), _base);
        if (tcpHeader.syn){
            seqno = 1;
        }
        //两种情况，数据已经存在或者不能放入
        if (seqno - 1 >= _reassembler.unread_bytes() + window_size())
        {
            return false;
        }else if (seqno - 1 + seg.length_in_sequence_space() <= _reassembler.unread_bytes())
        {
            return false;
        }

        _reassembler.push_substring(string(seg.payload().str()), seqno - 1, _eof);
        _base = seqno;
        return true;
    }
    return false;
}

optional<WrappingInt32> TCPReceiver::ackno() const {
    if (!_syn) {
        return nullopt;
    }
    uint64_t seqno = stream_out().bytes_written();
    if (_fin && stream_out().input_ended()) {
        seqno++;
    }
    return optional<WrappingInt32>(wrap(seqno + 1, _isn));
}

size_t TCPReceiver::window_size() const { return stream_out().remaining_capacity(); }
