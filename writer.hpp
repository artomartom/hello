
#ifndef WRITER_HPP
#define WRITER_HPP

namespace Writer
{
#define FLAG(name) \
    struct name    \
    {              \
    }

    FLAG(Console);
    FLAG(File);
    FLAG(_Log);
    FLAG(_Warning);
    FLAG(_Error);

    template <typename ...Args >
    struct Message;

    template <typename Out>
    using Log = Message<_Log, Out>;

    template <typename Out>
    using Warning = Message<_Warning, Out>;

    template <typename Out>
    using Error = Message<_Error, Out>;
};
#endif //WRITER_HPP
