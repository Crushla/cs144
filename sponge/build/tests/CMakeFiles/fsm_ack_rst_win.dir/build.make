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
CMAKE_SOURCE_DIR = /home/hwd/code/cpp/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hwd/code/cpp/sponge/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/fsm_ack_rst_win.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/fsm_ack_rst_win.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/fsm_ack_rst_win.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/fsm_ack_rst_win.dir/flags.make

tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o: tests/CMakeFiles/fsm_ack_rst_win.dir/flags.make
tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o: ../tests/fsm_ack_rst_win.cc
tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o: tests/CMakeFiles/fsm_ack_rst_win.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hwd/code/cpp/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o"
	cd /home/hwd/code/cpp/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o -MF CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o.d -o CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o -c /home/hwd/code/cpp/sponge/tests/fsm_ack_rst_win.cc

tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.i"
	cd /home/hwd/code/cpp/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hwd/code/cpp/sponge/tests/fsm_ack_rst_win.cc > CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.i

tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.s"
	cd /home/hwd/code/cpp/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hwd/code/cpp/sponge/tests/fsm_ack_rst_win.cc -o CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.s

# Object files for target fsm_ack_rst_win
fsm_ack_rst_win_OBJECTS = \
"CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o"

# External object files for target fsm_ack_rst_win
fsm_ack_rst_win_EXTERNAL_OBJECTS =

tests/fsm_ack_rst_win: tests/CMakeFiles/fsm_ack_rst_win.dir/fsm_ack_rst_win.cc.o
tests/fsm_ack_rst_win: tests/CMakeFiles/fsm_ack_rst_win.dir/build.make
tests/fsm_ack_rst_win: tests/libspongechecks.a
tests/fsm_ack_rst_win: libsponge/libsponge.a
tests/fsm_ack_rst_win: tests/CMakeFiles/fsm_ack_rst_win.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hwd/code/cpp/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fsm_ack_rst_win"
	cd /home/hwd/code/cpp/sponge/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsm_ack_rst_win.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/fsm_ack_rst_win.dir/build: tests/fsm_ack_rst_win
.PHONY : tests/CMakeFiles/fsm_ack_rst_win.dir/build

tests/CMakeFiles/fsm_ack_rst_win.dir/clean:
	cd /home/hwd/code/cpp/sponge/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/fsm_ack_rst_win.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/fsm_ack_rst_win.dir/clean

tests/CMakeFiles/fsm_ack_rst_win.dir/depend:
	cd /home/hwd/code/cpp/sponge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hwd/code/cpp/sponge /home/hwd/code/cpp/sponge/tests /home/hwd/code/cpp/sponge/build /home/hwd/code/cpp/sponge/build/tests /home/hwd/code/cpp/sponge/build/tests/CMakeFiles/fsm_ack_rst_win.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/fsm_ack_rst_win.dir/depend

