#include <thread>
#include <gtest/gtest.h>
#include <hello.hpp>
 
using namespace Writer;
TEST(basic, t1)
{
    /*
    auto Write{
        []()
        {
            const wchar_t *txt[10]{
                L" 1",
                L" 2",
                L" 3",
                L" 4",
                L" 5",
                L" 6",
                L" 7",
                L" 8",
                L" 9",
                L" 0",
            };

            for (auto &each : txt)
            {
                Log<Console>::Write(each,  each);
                Log<File>::Write(each,  each);
            }
        }};

    std::thread write1{Write};
    std::thread write2{Write};
    write1.join();
    write2.join();
*/
    Log<Console>::Write("this is Console Log");
    Warning<Console>::Write("this is Console Warning");
    Error<Console>::Write("this is Console Error");

    Log<File>::Write("this is File Log");
    Warning<File>::Write("this is File Warning");
    Error<File>::Write("this is File Error");
};
