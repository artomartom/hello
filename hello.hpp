#ifndef HELLO
#define HELLO


/*
  __cplusplus > 199711L

  __cplusplus > 201103L

 __cplusplus > 201402L

 __cplusplus > 201703L

 __cplusplus > 202002L
*/
#ifdef WIN32
#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#endif // WIN32

#include <iostream> //
#include <fstream>  //
#include <sstream>
#include <iomanip>
#include <assert.h>
#include <compare>
#include <mutex>
#include <tuple>
// decl
#include "writer.hpp"
//#include "exception.hpp"
//#include "timer.hpp"

// impl
#include "writer.inl"
//#include "exception.inl"
//#include "timer.inl"

#endif // HELLO