
#ifndef TEST
#define TEST
#endif // TEST

#ifdef TEST
#include <gtest/gtest.h>
#define STABLE
#include <chrono>
#include <type_traits>
#include <boost/type_index.hpp>
#include <tuple>
#include <hello.hpp>

template <class T>
const char *getType(T)
{
    return boost::typeindex::type_id<T>().pretty_name().c_str();
}

class MyEnvironment : public ::testing::Environment
{
public:
    virtual ~MyEnvironment() = default;

    // Override this to define how to set up the environment.
    virtual void SetUp()
    {
        using namespace std::chrono;
        auto now = high_resolution_clock::now();
        auto time_milisec = duration_cast<milliseconds>(now.time_since_epoch()).count();
        std::srand(time_milisec);
    }

    // Override this to define how to tear down the environment.
    virtual void TearDown() {}
};

using namespace Ranges;

void basic_print(auto range)
{

    for (auto e : range)
    {
        //std::cin.get();
        std::cout << e << " ";
    }
    std::cout << "\n";
};

TEST(basic, t1)
{
    basic_print(in_range(0, 10));
    basic_print(in_range(0, 10, step{2}));
    basic_print(in_range(0, 10, reversed{}));
    basic_print(in_range(0, 10, step{2},reversed{}));
};

#else // TEST
#include "../hello.hpp"
using namespace Ranges;
int main()
{

    for (auto e : in_range(0, 10, reversed{}))
    {
        std::cout << e << " ";
    }
    std::cout << "\n";
};

#endif //  TEST else