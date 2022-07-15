#ifndef RANGE_HPP
#define RANGE_HPP

namespace Ranges
{

    struct stable{};
    struct reversed{};
    template <typename T>
    struct step
    {
        T _;
    };

    template <typename U, typename... Flags>
    auto in_range(U begin, U end, Flags... flags) noexcept;

};

#endif // RANGE_HPP