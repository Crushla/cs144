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

# Utility rule file for check_lab6.

# Include any custom commands dependencies for this target.
include CMakeFiles/check_lab6.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/check_lab6.dir/progress.make

CMakeFiles/check_lab6:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hwd/code/cpp/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Testing Lab 6..."
	/home/hwd/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5284.51/bin/cmake/linux/bin/ctest --output-on-failure --timeout 10 -R '^arp_|^router_'

check_lab6: CMakeFiles/check_lab6
check_lab6: CMakeFiles/check_lab6.dir/build.make
.PHONY : check_lab6

# Rule to build all files generated by this target.
CMakeFiles/check_lab6.dir/build: check_lab6
.PHONY : CMakeFiles/check_lab6.dir/build

CMakeFiles/check_lab6.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/check_lab6.dir/cmake_clean.cmake
.PHONY : CMakeFiles/check_lab6.dir/clean

CMakeFiles/check_lab6.dir/depend:
	cd /home/hwd/code/cpp/sponge/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hwd/code/cpp/sponge /home/hwd/code/cpp/sponge /home/hwd/code/cpp/sponge/cmake-build-debug /home/hwd/code/cpp/sponge/cmake-build-debug /home/hwd/code/cpp/sponge/cmake-build-debug/CMakeFiles/check_lab6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/check_lab6.dir/depend
