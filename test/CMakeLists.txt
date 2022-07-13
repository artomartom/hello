#./test/CMakeLists.txt
#
#

cmake_minimum_required(VERSION 3.22.1)

project(hello_test VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

file (GLOB TESTS "*.cpp" )

foreach(EACH IN LISTS TESTS)
    get_filename_component(TARGET ${EACH} NAME_WE  )
    add_executable(${TARGET} ${EACH})
    target_include_directories(${TARGET}  PUBLIC ../)
    
    if(MSVC)
    target_compile_options(${TARGET} PRIVATE /W4 /WX)
    else()
    target_compile_options(${TARGET} PRIVATE -Wall -Wextra -Wpedantic -Werror)
    endif()

    message(STATUS "X=${TARGET}")

endforeach()
 
