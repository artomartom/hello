# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/artom/deve/projects/hello/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/artom/deve/projects/hello/test/build

# Include any dependencies generated for this target.
include CMakeFiles/Writer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Writer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Writer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Writer.dir/flags.make

CMakeFiles/Writer.dir/Writer.cpp.o: CMakeFiles/Writer.dir/flags.make
CMakeFiles/Writer.dir/Writer.cpp.o: ../Writer.cpp
CMakeFiles/Writer.dir/Writer.cpp.o: CMakeFiles/Writer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/artom/deve/projects/hello/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Writer.dir/Writer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Writer.dir/Writer.cpp.o -MF CMakeFiles/Writer.dir/Writer.cpp.o.d -o CMakeFiles/Writer.dir/Writer.cpp.o -c /home/artom/deve/projects/hello/test/Writer.cpp

CMakeFiles/Writer.dir/Writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Writer.dir/Writer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/artom/deve/projects/hello/test/Writer.cpp > CMakeFiles/Writer.dir/Writer.cpp.i

CMakeFiles/Writer.dir/Writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Writer.dir/Writer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/artom/deve/projects/hello/test/Writer.cpp -o CMakeFiles/Writer.dir/Writer.cpp.s

# Object files for target Writer
Writer_OBJECTS = \
"CMakeFiles/Writer.dir/Writer.cpp.o"

# External object files for target Writer
Writer_EXTERNAL_OBJECTS =

Writer: CMakeFiles/Writer.dir/Writer.cpp.o
Writer: CMakeFiles/Writer.dir/build.make
Writer: CMakeFiles/Writer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/artom/deve/projects/hello/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Writer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Writer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Writer.dir/build: Writer
.PHONY : CMakeFiles/Writer.dir/build

CMakeFiles/Writer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Writer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Writer.dir/clean

CMakeFiles/Writer.dir/depend:
	cd /home/artom/deve/projects/hello/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/artom/deve/projects/hello/test /home/artom/deve/projects/hello/test /home/artom/deve/projects/hello/test/build /home/artom/deve/projects/hello/test/build /home/artom/deve/projects/hello/test/build/CMakeFiles/Writer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Writer.dir/depend

