#ifndef RANGE_INL
#define RANGE_INL

namespace Ranges
{

    namespace Util
    {

        template <typename What, typename... Flags>
        struct is_present
        {
            static constexpr bool value{(std::is_same_v<What, Flags> || ...)};
        };
    };

    template <typename T>
    struct range_iterator_trait
    {
        using value_type = T;
        using difference_type = decltype(value_type{} - value_type{});
        using iterator_category = std::input_iterator_tag;
        using pointer = value_type *;
        using reference = value_type &;
    };

    template <typename T>
    class range //  range object
    {

    public:
        struct iterator
        {
        public:
            explicit iterator(T index)
                : m_index(index){};
            iterator() = delete;
            virtual ~iterator() = default;

            bool operator!=(const iterator &other) const noexcept { return m_index < other.m_index; };
            T &operator++() noexcept { return ++m_index; };
            T operator*() noexcept { return m_index; };

        protected:
            T m_index{};
        };

        template <typename U, typename... Flags> // factory
        friend auto in_range(U begin, U end, Flags... flags) noexcept;

        range::iterator begin() const noexcept { return range::iterator{this->m_begin}; };
        range::iterator end() const noexcept { return range::iterator{this->m_end}; };

    protected:
        template <typename... Flags>
        explicit range(T begin, T end, Flags...) noexcept
            : m_begin{begin}, m_end{end} {}
        T m_begin;
        T m_end;
    };
    template <typename T>
    class reversed_range : public range<T> //  range object
    {

    public:
        struct iterator : public range<T>::iterator
        {
        public:
            explicit iterator(T index) noexcept
                : range<T>::iterator{index} {}
            bool operator!=(const iterator &other) const noexcept { return this->m_index >= other.m_index; }
            T &operator++() noexcept { return --iterator::m_index; }
        };
        template <typename U, typename... Flags> // factory
        friend auto in_range(U begin, U end, Flags... flags) noexcept;

        reversed_range::iterator begin() const noexcept { return reversed_range::iterator{this->m_begin}; }
        reversed_range::iterator end() const noexcept { return reversed_range::iterator{this->m_end}; }

    protected:
        template <typename... Flags>
        explicit reversed_range(T begin, T end, Flags...) noexcept
            : range<T>{end - 1, begin} {}
    };
    template <typename T>
    class step_range : protected range<T> //  range object
    {

    public:
        struct iterator : public range<T>::iterator
        {
        public:
            explicit iterator(T index, T step) noexcept
                : range<T>::iterator{index},
                  m_step{step} {}
            T &operator++() noexcept { return this->m_index += m_step; }

        protected:
            T m_step;
        };

        template <typename U, typename... Flags> // factory
        friend auto in_range(U begin, U end, Flags... flags) noexcept;

        step_range::iterator begin() const noexcept { return step_range::iterator{this->m_begin, this->m_step}; }
        step_range::iterator end() const noexcept { return step_range::iterator{this->m_end, this->m_step}; }

    protected:
        int set_step(const step<T> &s) { return m_step = s._; }

        template <typename U>
        int set_step(U s)
        {
            (void)s;
            return 0;
        }

        template <typename... Flags>
        explicit step_range(T begin, T end, Flags... flags) noexcept
            : range<T>{begin, end}
        {
            (void)std::initializer_list<int>{(set_step(flags), 0)...};
        }
        T m_step;
    };
    template <typename T>
    class reversed_step_range : protected step_range<T> //  range object
    {

    public:
        struct iterator : public step_range<T>::iterator
        {
        public:
            explicit iterator(T index, T step) noexcept
                : step_range<T>::iterator{index, step} {};
            bool operator!=(const iterator &other) const noexcept { return this->m_index >= other.m_index; };
            T &operator++() noexcept { return this->m_index -= this->m_step; }
        };

        template <typename U, typename... Flags> // factory
        friend auto in_range(U begin, U end, Flags... flags) noexcept;

        reversed_step_range::iterator begin() const noexcept { return reversed_step_range::iterator{this->m_begin, this->m_step}; }
        reversed_step_range::iterator end() const noexcept { return reversed_step_range::iterator{this->m_end, this->m_step}; }

    protected:
        template <typename... Flags>
        explicit reversed_step_range(T begin, T end, Flags... flags) noexcept
            : step_range<T>{end - 1, begin, flags...} {}
    };

    //  outside  decls for friend function (cause of wierd c++ friend func visibility)
    // factories

    template <typename U, typename... Flags>
    auto in_range(U begin, U end, Flags... flags) noexcept
    {
        // constexpr bool useStable{Util::is_present<stable, Flags...>::value};
        constexpr bool useStep{Util::is_present<step<U>, Flags...>::value};
        constexpr bool useReversed{Util::is_present<reversed, Flags...>::value};

        if constexpr (useStep && useReversed)
            return reversed_step_range{begin, end, flags...};
        else if constexpr (useReversed)
            return reversed_range{begin, end, flags...};
        else if constexpr (useStep)
            return step_range{begin, end, flags...};
        else if constexpr (!useStep && !useReversed)
            return range{begin, end, flags...};
    };

        //  stable factory
#undef STABLE
#ifdef STABLE
    inline range in_range(range::T begin, range::T end, stable) noexcept
    {
        if (begin > end)
            return range{end, begin};
        else
            return range{begin, end};
    };
    inline reversed_range reversed_in_range(reversed_range::T begin, reversed_range::T end, stable) noexcept
    {
        //     if (begin > end)else
        return reversed_range{begin, end};
    };
    inline step_range in_range(step_range::T begin, step_range::T end, step_range::T step, stable) noexcept
    {
        // if(step<0 )       step=-step;

        //     if (begin > end)else
        return step_range{begin, end, step};
    };
    inline reversed_step_range reversed_in_range(reversed_step_range::T begin, reversed_step_range::T end, reversed_step_range::T step, stable) noexcept
    {
        // if(step<0 )       step=-step;
        //      if (begin > end)else
        return reversed_step_range{begin, end, step};
    };
#endif // STABLE

};

#endif // RANGE_INL
