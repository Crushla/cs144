# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /home/hwd/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5284.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/hwd/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5284.51/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hwd/code/cpp/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hwd/code/cpp/sponge/cmake-build-debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/ipv4_parser.dir/depend.make
# Include the progress variables for this target.
include tests/CMakeFiles/ipv4_parser.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/ipv4_parser.dir/flags.make

tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o: tests/CMakeFiles/ipv4_parser.dir/flags.make
tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o: ../tests/ipv4_parser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hwd/code/cpp/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o"
	cd /home/hwd/code/cpp/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o -c /home/hwd/code/cpp/sponge/tests/ipv4_parser.cc

tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.i"
	cd /home/hwd/code/cpp/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hwd/code/cpp/sponge/tests/ipv4_parser.cc > CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.i

tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.s"
	cd /home/hwd/code/cpp/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hwd/code/cpp/sponge/tests/ipv4_parser.cc -o CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.s

# Object files for target ipv4_parser
ipv4_parser_OBJECTS = \
"CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o"

# External object files for target ipv4_parser
ipv4_parser_EXTERNAL_OBJECTS =

tests/ipv4_parser: tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o
tests/ipv4_parser: tests/CMakeFiles/ipv4_parser.dir/build.make
tests/ipv4_parser: tests/libspongechecks.a
tests/ipv4_parser: /usr/lib/libpcap.so
tests/ipv4_parser: libsponge/libsponge.a
tests/ipv4_parser: /usr/lib/libpcap.so
tests/ipv4_parser: tests/CMakeFiles/ipv4_parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hwd/code/cpp/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ipv4_parser"
	cd /home/hwd/code/cpp/sponge/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ipv4_parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/ipv4_parser.dir/build: tests/ipv4_parser
.PHONY : tests/CMakeFiles/ipv4_parser.dir/build

tests/CMakeFiles/ipv4_parser.dir/clean:
	cd /home/hwd/code/cpp/sponge/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/ipv4_parser.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ipv4_parser.dir/clean

tests/CMakeFiles/ipv4_parser.dir/depend:
	cd /home/hwd/code/cpp/sponge/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hwd/code/cpp/sponge /home/hwd/code/cpp/sponge/tests /home/hwd/code/cpp/sponge/cmake-build-debug /home/hwd/code/cpp/sponge/cmake-build-debug/tests /home/hwd/code/cpp/sponge/cmake-build-debug/tests/CMakeFiles/ipv4_parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ipv4_parser.dir/depend

