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
include libraries/midifile/CMakeFiles/binasc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libraries/midifile/CMakeFiles/binasc.dir/compiler_depend.make

# Include the progress variables for this target.
include libraries/midifile/CMakeFiles/binasc.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/midifile/CMakeFiles/binasc.dir/flags.make

libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.o: libraries/midifile/CMakeFiles/binasc.dir/flags.make
libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.o: ../libraries/midifile/tools/binasc.cpp
libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.o: libraries/midifile/CMakeFiles/binasc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.o -MF CMakeFiles/binasc.dir/tools/binasc.cpp.o.d -o CMakeFiles/binasc.dir/tools/binasc.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/binasc.cpp

libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binasc.dir/tools/binasc.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/binasc.cpp > CMakeFiles/binasc.dir/tools/binasc.cpp.i

libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binasc.dir/tools/binasc.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/binasc.cpp -o CMakeFiles/binasc.dir/tools/binasc.cpp.s

# Object files for target binasc
binasc_OBJECTS = \
"CMakeFiles/binasc.dir/tools/binasc.cpp.o"

# External object files for target binasc
binasc_EXTERNAL_OBJECTS =

libraries/midifile/binasc: libraries/midifile/CMakeFiles/binasc.dir/tools/binasc.cpp.o
libraries/midifile/binasc: libraries/midifile/CMakeFiles/binasc.dir/build.make
libraries/midifile/binasc: libraries/midifile/libmidifile.a
libraries/midifile/binasc: libraries/midifile/CMakeFiles/binasc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable binasc"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binasc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/midifile/CMakeFiles/binasc.dir/build: libraries/midifile/binasc
.PHONY : libraries/midifile/CMakeFiles/binasc.dir/build

libraries/midifile/CMakeFiles/binasc.dir/clean:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -P CMakeFiles/binasc.dir/cmake_clean.cmake
.PHONY : libraries/midifile/CMakeFiles/binasc.dir/clean

libraries/midifile/CMakeFiles/binasc.dir/depend:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/users/user/source/repos/mmm_refactored /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile/CMakeFiles/binasc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/midifile/CMakeFiles/binasc.dir/depend

