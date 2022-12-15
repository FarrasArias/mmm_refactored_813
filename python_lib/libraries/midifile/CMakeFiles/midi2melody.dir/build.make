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
include libraries/midifile/CMakeFiles/midi2melody.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libraries/midifile/CMakeFiles/midi2melody.dir/compiler_depend.make

# Include the progress variables for this target.
include libraries/midifile/CMakeFiles/midi2melody.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/midifile/CMakeFiles/midi2melody.dir/flags.make

libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o: libraries/midifile/CMakeFiles/midi2melody.dir/flags.make
libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o: ../libraries/midifile/tools/midi2melody.cpp
libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o: libraries/midifile/CMakeFiles/midi2melody.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o -MF CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o.d -o CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/midi2melody.cpp

libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/midi2melody.cpp > CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.i

libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/tools/midi2melody.cpp -o CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.s

# Object files for target midi2melody
midi2melody_OBJECTS = \
"CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o"

# External object files for target midi2melody
midi2melody_EXTERNAL_OBJECTS =

libraries/midifile/midi2melody: libraries/midifile/CMakeFiles/midi2melody.dir/tools/midi2melody.cpp.o
libraries/midifile/midi2melody: libraries/midifile/CMakeFiles/midi2melody.dir/build.make
libraries/midifile/midi2melody: libraries/midifile/libmidifile.a
libraries/midifile/midi2melody: libraries/midifile/CMakeFiles/midi2melody.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable midi2melody"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/midi2melody.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/midifile/CMakeFiles/midi2melody.dir/build: libraries/midifile/midi2melody
.PHONY : libraries/midifile/CMakeFiles/midi2melody.dir/build

libraries/midifile/CMakeFiles/midi2melody.dir/clean:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -P CMakeFiles/midi2melody.dir/cmake_clean.cmake
.PHONY : libraries/midifile/CMakeFiles/midi2melody.dir/clean

libraries/midifile/CMakeFiles/midi2melody.dir/depend:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/users/user/source/repos/mmm_refactored /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile/CMakeFiles/midi2melody.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/midifile/CMakeFiles/midi2melody.dir/depend

