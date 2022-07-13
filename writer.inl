#ifndef WRITER_INL
#define WRITER_INL



namespace Writer
{

    template <typename T>
    struct AddSpace
    {
        AddSpace(const T &ref) : ref{ref} {};
        friend std::wostream &operator<<(std::wostream &os, const AddSpace &that)
        {
            return os << L' ' << that.ref;
        }

    private:
        const T &ref{};
    };

    struct PutLocalTime
    {
        friend std::wostream &operator<<(std::wostream &os, const PutLocalTime &thats)
        {
            (void)thats;
            auto now{std::chrono::system_clock::now()};
            auto in_time_t{std::chrono::system_clock::to_time_t(now)};
            return os << std::put_time(std::localtime(&in_time_t), L"%Y-%m-%d %X\n");
        }
    };

    template <typename Arg, typename... Args>
    std::wstringstream Accumulate(const Arg &arg, const Args &...args)
    {
        std::wstringstream ss{};
        (((ss << PutLocalTime{}) << arg) << ... << AddSpace<const Args &>(args)) << L'\n';
        return ss;
    };

    template <>
    struct Message<_Log, Console>
    {
        template <typename Arg, typename... Args>
        static void Write(const Arg &arg, const Args &...args)
        {
            auto ss{Accumulate(std::forward<const Arg &>(arg), std::forward<const Args &>(args)...)};
            std::lock_guard<std::mutex> lockGuard{m};
            std::wcout << ss.str().c_str();
        } 
        inline static std::mutex m{};
    };

    template <>
    struct Message<_Warning, Console> : public Message<_Log, Console>
    {
    };
    template <>
    struct Message<_Error, Console>
    {
        template <typename Arg, typename... Args>
        static void Write(const Arg &arg, const Args &...args)
        {
            auto ss{Accumulate(std::forward<const Arg &>(arg), std::forward<const Args &>(args)...)};
            std::lock_guard<std::mutex> lockGuard{m};
            std::wcerr << ss.str().c_str();
        } 
        inline static std::mutex m{};
    };

    template <>
    struct Message<_Log, File>
    {
        template <typename Arg, typename... Args>
        static void Write(const Arg &arg, const Args &...args)
        {
            auto ss{Accumulate(std::forward<const Arg &>(arg), std::forward<const Args &>(args)...)};
            std::lock_guard<std::mutex> lockGuard{m};
            std::wfstream fos{"_log", std::ios::binary | std::ios::app};
            fos << ss.str().c_str();
        } 
        inline static std::mutex m{};
    };
    template <>
    struct Message<_Warning, File>
    {
        template <typename Arg, typename... Args>
        static void Write(const Arg &arg, const Args &...args)
        {
            auto ss{Accumulate(std::forward<const Arg &>(arg), std::forward<const Args &>(args)...)};
            std::lock_guard<std::mutex> lockGuard{m};
            std::wfstream fos{"_warning", std::ios::binary | std::ios::app};
            fos << ss.str().c_str();
        } 
        inline static std::mutex m{};
    };

    template <>
    struct Message<_Error, File>
    {
        template <typename Arg, typename... Args>
        static void Write(const Arg &arg, const Args &...args)
        {
            auto ss{Accumulate(std::forward<const Arg &>(arg), std::forward<const Args &>(args)...)};
            std::lock_guard<std::mutex> lockGuard{m};
            std::wfstream fos{"_error", std::ios::binary | std::ios::app};
            fos << ss.str().c_str();
        } 
        inline static std::mutex m{};
    };

};
#endif
