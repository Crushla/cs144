#include "stream_reassembler.hh"

// Dummy implementation of a stream reassembler.

// For Lab 1, please replace with a real implementation that passes the
// automated checks run by `make check_lab1`.

// You will need to add private members to the class declaration in `stream_reassembler.hh`
using namespace std;

//!  这个函数接受一个字节的子字符串(也就是一个段)，
//！ 可能是乱序的，从逻辑流，并组装任何新
//！ 连续的子字符串，并将它们按顺序写入输出流。
//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
    if (index+data.size()<_unread_index){
        //如果是已经重组的数据，就直接return
        //如果已经到达最后，且未重组的是0，则_end = true
        if(eof&&empty()){
            _output.end_input();
        }
        return;
    }
    //超出最大的范围
    if (_unread_index+_output.remaining_capacity()<=index){
        return;
    }
    //其余部分都有一部分是未
    bool  judge =true;
    if (index + data.size() > _unread_index + _output.remaining_capacity()) {
        judge = false;
    }
    //将该部分的字节覆盖进去,并略过已经存储的部分
    for (size_t i = (index>=_unread_index?index:_unread_index); i<index+data.size()&&i<_unread_index+_output.remaining_capacity(); ++i){
        //如果为空，就覆盖
        if (_map.end()==_map.find(i)){
            _map[i] = data[i - index];
            _unassembled_bytes++;
        }
    }
    //遍历map，并将其生成字符串
    string str = "";
    for (size_t i = _unread_index; _map.end()!=_map.find(i); ++i) {
        str+=_map[i];
        _map.erase(i);
        _unread_index++;
        _unassembled_bytes--;
    }
    if (judge && eof) {
        _eof = true;
    }

    if(_eof&&empty()){
        _output.end_input();
    }
    //将字符串进行写入
    _output.write(str);
}

size_t StreamReassembler::unassembled_bytes() const { return _unassembled_bytes; }

bool StreamReassembler::empty() const { return unassembled_bytes() == 0; }
