
#ifndef WRITER_INL
#define WRITER_INL

#define CONSTEXPR

namespace Writer
{

    template <typename... Args>
    CONSTEXPR std::wstringstream Accumulate(Args const &...args)
    {
        std::wstringstream ss{};
        (void)std::initializer_list<int>{(ss << args << L' ', 0)...};
        return ss;
    };

    inline std::_Put_time<wchar_t> GetLocalTime()
    {
        auto now{std::chrono::system_clock::now()};
        auto in_time_t{std::chrono::system_clock::to_time_t(now)};
        return std::put_time(std::localtime(&in_time_t), L"%Y-%m-%d %X\n");
    };

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
    template <Type MT> // log , warning //console
    struct Message<MT, Console>
    {
        template <typename Arg, typename... Args>
        CONSTEXPR static void Write(const Arg arg, const Args... args)
        {
            std::wstringstream ss{};
            (((ss << GetLocalTime()) << arg) << ... << AddSpace(args)) << L'\n';
            std::lock_guard<std::mutex> lockGuard{m};
            std::wcout << ss.str().c_str();
        };
        inline static std::mutex m{};
    };
    template <> // error //console
    struct Message<Type::Error, Console>
    {
        template <typename Arg, typename... Args>
        CONSTEXPR static void Write(const Arg arg, const Args... args)
        {
            std::wstringstream ss{};
            (((ss << GetLocalTime()) << arg) << ... << AddSpace(args)) << L'\n';
            std::lock_guard<std::mutex> lockGuard{m};
            std::wcerr << ss.str().c_str();
        };
        inline static std::mutex m{};
    };
    template <Type MT> // log , warning // file
    struct Message<MT, File>
    {
        template <typename Arg, typename... Args>
        CONSTEXPR static void Write(const Arg arg, const Args... args)
        {
            std::wstringstream ss{};
            (((ss << GetLocalTime()) << arg) << ... << AddSpace(args)) << L'\n';
            std::lock_guard<std::mutex> lockGuard{m};
            std::wfstream fos{"log.txt", std::ios::binary | std::ios::app};
            // assert(fos.is_open());
            fos << ss.str().c_str();
        };
        inline static std::mutex m{};
    };
    template <> // error // file
    struct Message<Type::Error, File>
    {
        template <typename Arg, typename... Args>
        CONSTEXPR static void Write(const Arg arg, const Args... args)
        {
            std::wstringstream ss{};
            (((ss << GetLocalTime()) << arg) << ... << AddSpace(args)) << L'\n';
            std::lock_guard<std::mutex> lockGuard{m};
            std::wfstream fos{"error.txt", std::ios::binary | std::ios::app};
            // assert(fos.is_open());
            fos << ss.str().c_str();
        };
        inline static std::mutex m{};
    };

};
#endif