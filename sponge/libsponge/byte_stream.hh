#ifndef SPONGE_LIBSPONGE_BYTE_STREAM_HH
#define SPONGE_LIBSPONGE_BYTE_STREAM_HH

#include <cstddef>
#include <cstdint>
#include <deque>
#include <list>
#include <string>
#include <utility>

//! \brief An in-order byte stream.

//! Bytes are written on the "input" side and read from the "output"
//! side.  The byte stream is finite: the writer can end the input,
//! and then no more bytes can be written.
class ByteStream {
  private:
    // Your code here -- add private members as necessary.
    std::deque<char> _buffer{};
    size_t _capacity;
    size_t _length;
    size_t _write;
    size_t _read;
    bool _end{};
    bool _error{};  //!< Flag indicating that the stream suffered an error.

  public:
    //! Construct a stream with room for `capacity` bytes.
    ByteStream(const size_t capacity);
    //! \name "Input" interface for the writer
    //!@{

    //! Write a string of bytes into the stream. Write as many
    //! as will fit, and return how many were written.
    //! \returns the number of bytes accepted into the stream
    //将一个字节串写入流
    size_t write(const std::string &data);

    //! \returns the number of additional bytes that the stream has space for
    size_t remaining_capacity() const;

    //! Signal that the byte stream has reached its ending
    //表示字节流已到达终点
    void end_input();

    //! Indicate that the stream suffered an error.
    void set_error() { _error = true; }
    //!@}

    //! \name "Output" interface for the reader
    //!@{

    //! Peek at next "len" bytes of the stream
    //查看流的下一个len字节
    //! \returns a string
    std::string peek_output(const size_t len) const;

    //! Remove bytes from the buffer
    //从缓冲区中删除字节
    void pop_output(const size_t len);

    //! Read (i.e., copy and then pop) the next "len" bytes of the stream
    //! \returns a vector of bytes read
    std::string read(const size_t len) {
        const auto ret = peek_output(len);
        pop_output(len);
        return ret;
    }

    //! \returns `true` if the stream input has ended
    //如果流输入已经结束,则为true
    bool input_ended() const;

    //! \returns `true` if the stream has suffered an error
    bool error() const { return _error; }

    //! \returns the maximum amount that can currently be read from the stream
    //当前可从流中读取的最大数量
    size_t buffer_size() const;

    //! \returns `true` if the buffer is empty
    //如果缓冲区为空，则为true
    bool buffer_empty() const;

    //! \returns `true` if the output has reached the ending
    //如果输出已经到达终点,则为true
    bool eof() const;
    //!@}

    //! \name General accounting
    //!@{

    //! Total number of bytes written
    size_t bytes_written() const;

    //! Total number of bytes popped
    size_t bytes_read() const;
    //!@}
};

#endif  // SPONGE_LIBSPONGE_BYTE_STREAM_HH
