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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/users/user/source/repos/mmm_refactored

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/users/user/source/repos/mmm_refactored/python_lib

# Include any dependencies generated for this target.
include libraries/midifile/CMakeFiles/stretch.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libraries/midifile/CMakeFiles/stretch.dir/compiler_depend.make

# Include the progress variables for this target.
include libraries/midifile/CMakeFiles/stretch.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/midifile/CMakeFiles/stretch.dir/flags.make

libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.o: libraries/midifile/CMakeFiles/stretch.dir/flags.make
libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.o: ../libraries/midifile/tools/stretch.cpp
libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.o: libraries/midifile/CMakeFiles/stretch.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.o -MF CMakeFiles/stretch.dir/tools/stretch.cpp.o.d -o CMakeFiles/stretch.dir/tools/stretch.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/stretch.cpp

libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stretch.dir/tools/stretch.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/stretch.cpp > CMakeFiles/stretch.dir/tools/stretch.cpp.i

libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stretch.dir/tools/stretch.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/stretch.cpp -o CMakeFiles/stretch.dir/tools/stretch.cpp.s

# Object files for target stretch
stretch_OBJECTS = \
"CMakeFiles/stretch.dir/tools/stretch.cpp.o"

# External object files for target stretch
stretch_EXTERNAL_OBJECTS =

libraries/midifile/stretch: libraries/midifile/CMakeFiles/stretch.dir/tools/stretch.cpp.o
libraries/midifile/stretch: libraries/midifile/CMakeFiles/stretch.dir/build.make
libraries/midifile/stretch: libraries/midifile/libmidifile.a
libraries/midifile/stretch: libraries/midifile/CMakeFiles/stretch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stretch"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stretch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/midifile/CMakeFiles/stretch.dir/build: libraries/midifile/stretch
.PHONY : libraries/midifile/CMakeFiles/stretch.dir/build

libraries/midifile/CMakeFiles/stretch.dir/clean:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -P CMakeFiles/stretch.dir/cmake_clean.cmake
.PHONY : libraries/midifile/CMakeFiles/stretch.dir/clean

libraries/midifile/CMakeFiles/stretch.dir/depend:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/users/user/source/repos/mmm_refactored /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile/CMakeFiles/stretch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/midifile/CMakeFiles/stretch.dir/depend
