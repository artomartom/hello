#pragma once

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
#include "exception.hpp"
#include "timer.hpp"

using ::Writer::Error;
using ::Writer::Log;
using ::Writer::Warning;
using ::Writer::Out::Console;
using ::Writer::Out::File;

// impl
#include "writer.inl"
#include "exception.inl"
#include "timer.inl"
