# hello/CMakeLists.txt
#
#
cmake_minimum_required(VERSION 3.5)

 
 
target_precompile_headers(${PROJECT_NAME}  PUBLIC   hello.hpp)
target_include_directories(${PROJECT_NAME} PUBLIC  ${CMAKE_CURRENT_LIST_DIR})
