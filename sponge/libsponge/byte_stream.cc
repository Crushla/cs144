#include "byte_stream.hh"

#include <algorithm>
#include <iterator>
#include <stdexcept>

// Dummy implementation of a flow-controlled in-memory byte stream.

// For Lab 0, please replace with a real implementation that passes the
// automated checks run by `make check_lab0`.

// You will need to add private members to the class declaration in `byte_stream.hh`
using namespace std;

ByteStream::ByteStream(const size_t capacity):
    _capacity(capacity),
    _length(0),
    _write(0),
    _read(0),
    _end(false){}

size_t ByteStream::write(const string &data) {
    size_t remain = remaining_capacity();
    if (remain > data.length()){
        remain = data.length();
    }
    _write += remain;
    _length+= remain;
    for (size_t i = 0; i < remain; ++i) {
        _buffer.push_back(data[i]);
    }
    return remain;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
    size_t length = len;
    if(length > buffer_size()){
        length = buffer_size();
    }
    return string().assign(_buffer.begin(),_buffer.begin()+length);
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) {
    size_t length = len;
    if(length > buffer_size()){
        length = buffer_size();
    }
    _read += length;
    _length -= length;
    for (size_t i = 0; i < length; ++i) {
        _buffer.pop_front();
    }
}

void ByteStream::end_input() { _end = true; }

bool ByteStream::input_ended() const { return _end; }

size_t ByteStream::buffer_size() const { return _length; }

bool ByteStream::buffer_empty() const { return buffer_size() == 0; }

bool ByteStream::eof() const { return input_ended()&&buffer_empty(); }

size_t ByteStream::bytes_written() const { return _write; }

size_t ByteStream::bytes_read() const { return _read; }

size_t ByteStream::remaining_capacity() const { return _capacity - buffer_size(); }
