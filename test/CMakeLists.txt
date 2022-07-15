
#./test/CMakeLists.txt
#
#

cmake_minimum_required(VERSION 3.22.1)

project(hello_test VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

enable_testing()
find_package(GTest CONFIG  )


if(GTest_FOUND)

    file (GLOB TESTS "*.cpp" )

    foreach(EACH IN LISTS TESTS)
        get_filename_component(TARGET ${EACH} NAME_WE  )
        add_executable(${TARGET} ${EACH})
        target_include_directories(${TARGET}  PUBLIC ..)
        target_link_libraries(${TARGET} gtest_main)
        target_link_libraries(${TARGET} gtest)

        target_compile_definitions(${TARGET} PRIVATE TEST)

        if(MSVC)
        target_compile_options(${TARGET} PRIVATE /W4 /WX)
        else()
        target_compile_options(${TARGET} PRIVATE -Wall -Wextra -Wpedantic -masm=intel)#-Werror
        endif()

        message(STATUS "X=${TARGET}")
        add_test(NAME ${TARGET} COMMAND ${TARGET})
         
        endforeach()
        
else()
    message(STATUS "Gtest where ?")

endif()

  