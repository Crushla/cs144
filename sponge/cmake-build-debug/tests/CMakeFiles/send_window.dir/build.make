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
CMAKE_SOURCE_DIR = /home/hwd/code/cpp/cs144/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hwd/code/cpp/cs144/sponge/cmake-build-debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/send_window.dir/depend.make
# Include the progress variables for this target.
include tests/CMakeFiles/send_window.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/send_window.dir/flags.make

tests/CMakeFiles/send_window.dir/send_window.cc.o: tests/CMakeFiles/send_window.dir/flags.make
tests/CMakeFiles/send_window.dir/send_window.cc.o: ../tests/send_window.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hwd/code/cpp/cs144/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/send_window.dir/send_window.cc.o"
	cd /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/send_window.dir/send_window.cc.o -c /home/hwd/code/cpp/cs144/sponge/tests/send_window.cc

tests/CMakeFiles/send_window.dir/send_window.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/send_window.dir/send_window.cc.i"
	cd /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hwd/code/cpp/cs144/sponge/tests/send_window.cc > CMakeFiles/send_window.dir/send_window.cc.i

tests/CMakeFiles/send_window.dir/send_window.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/send_window.dir/send_window.cc.s"
	cd /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hwd/code/cpp/cs144/sponge/tests/send_window.cc -o CMakeFiles/send_window.dir/send_window.cc.s

# Object files for target send_window
send_window_OBJECTS = \
"CMakeFiles/send_window.dir/send_window.cc.o"

# External object files for target send_window
send_window_EXTERNAL_OBJECTS =

tests/send_window: tests/CMakeFiles/send_window.dir/send_window.cc.o
tests/send_window: tests/CMakeFiles/send_window.dir/build.make
tests/send_window: tests/libspongechecks.a
tests/send_window: libsponge/libsponge.a
tests/send_window: tests/CMakeFiles/send_window.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hwd/code/cpp/cs144/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable send_window"
	cd /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/send_window.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/send_window.dir/build: tests/send_window
.PHONY : tests/CMakeFiles/send_window.dir/build

tests/CMakeFiles/send_window.dir/clean:
	cd /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/send_window.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/send_window.dir/clean

tests/CMakeFiles/send_window.dir/depend:
	cd /home/hwd/code/cpp/cs144/sponge/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hwd/code/cpp/cs144/sponge /home/hwd/code/cpp/cs144/sponge/tests /home/hwd/code/cpp/cs144/sponge/cmake-build-debug /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests /home/hwd/code/cpp/cs144/sponge/cmake-build-debug/tests/CMakeFiles/send_window.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/send_window.dir/depend

