# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_SOURCE_DIR = /home/hwd/code/cpp/cs144/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hwd/code/cpp/cs144/sponge/build

# Include any dependencies generated for this target.
include doctests/CMakeFiles/address_dt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include doctests/CMakeFiles/address_dt.dir/compiler_depend.make

# Include the progress variables for this target.
include doctests/CMakeFiles/address_dt.dir/progress.make

# Include the compile flags for this target's objects.
include doctests/CMakeFiles/address_dt.dir/flags.make

doctests/CMakeFiles/address_dt.dir/address_dt.cc.o: doctests/CMakeFiles/address_dt.dir/flags.make
doctests/CMakeFiles/address_dt.dir/address_dt.cc.o: ../doctests/address_dt.cc
doctests/CMakeFiles/address_dt.dir/address_dt.cc.o: doctests/CMakeFiles/address_dt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hwd/code/cpp/cs144/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doctests/CMakeFiles/address_dt.dir/address_dt.cc.o"
	cd /home/hwd/code/cpp/cs144/sponge/build/doctests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT doctests/CMakeFiles/address_dt.dir/address_dt.cc.o -MF CMakeFiles/address_dt.dir/address_dt.cc.o.d -o CMakeFiles/address_dt.dir/address_dt.cc.o -c /home/hwd/code/cpp/cs144/sponge/doctests/address_dt.cc

doctests/CMakeFiles/address_dt.dir/address_dt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/address_dt.dir/address_dt.cc.i"
	cd /home/hwd/code/cpp/cs144/sponge/build/doctests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hwd/code/cpp/cs144/sponge/doctests/address_dt.cc > CMakeFiles/address_dt.dir/address_dt.cc.i

doctests/CMakeFiles/address_dt.dir/address_dt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/address_dt.dir/address_dt.cc.s"
	cd /home/hwd/code/cpp/cs144/sponge/build/doctests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hwd/code/cpp/cs144/sponge/doctests/address_dt.cc -o CMakeFiles/address_dt.dir/address_dt.cc.s

# Object files for target address_dt
address_dt_OBJECTS = \
"CMakeFiles/address_dt.dir/address_dt.cc.o"

# External object files for target address_dt
address_dt_EXTERNAL_OBJECTS =

doctests/address_dt: doctests/CMakeFiles/address_dt.dir/address_dt.cc.o
doctests/address_dt: doctests/CMakeFiles/address_dt.dir/build.make
doctests/address_dt: libsponge/libsponge.a
doctests/address_dt: /usr/lib/libpthread.so
doctests/address_dt: doctests/CMakeFiles/address_dt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hwd/code/cpp/cs144/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable address_dt"
	cd /home/hwd/code/cpp/cs144/sponge/build/doctests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/address_dt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
doctests/CMakeFiles/address_dt.dir/build: doctests/address_dt
.PHONY : doctests/CMakeFiles/address_dt.dir/build

doctests/CMakeFiles/address_dt.dir/clean:
	cd /home/hwd/code/cpp/cs144/sponge/build/doctests && $(CMAKE_COMMAND) -P CMakeFiles/address_dt.dir/cmake_clean.cmake
.PHONY : doctests/CMakeFiles/address_dt.dir/clean

doctests/CMakeFiles/address_dt.dir/depend:
	cd /home/hwd/code/cpp/cs144/sponge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hwd/code/cpp/cs144/sponge /home/hwd/code/cpp/cs144/sponge/doctests /home/hwd/code/cpp/cs144/sponge/build /home/hwd/code/cpp/cs144/sponge/build/doctests /home/hwd/code/cpp/cs144/sponge/build/doctests/CMakeFiles/address_dt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doctests/CMakeFiles/address_dt.dir/depend

