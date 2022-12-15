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
include libraries/midifile/CMakeFiles/midifile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.make

# Include the progress variables for this target.
include libraries/midifile/CMakeFiles/midifile.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/midifile/CMakeFiles/midifile.dir/flags.make

libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/flags.make
libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.o: ../libraries/midifile/src/Options.cpp
libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.o -MF CMakeFiles/midifile.dir/src/Options.cpp.o.d -o CMakeFiles/midifile.dir/src/Options.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/Options.cpp

libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midifile.dir/src/Options.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/Options.cpp > CMakeFiles/midifile.dir/src/Options.cpp.i

libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midifile.dir/src/Options.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/Options.cpp -o CMakeFiles/midifile.dir/src/Options.cpp.s

libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/flags.make
libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.o: ../libraries/midifile/src/Binasc.cpp
libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.o -MF CMakeFiles/midifile.dir/src/Binasc.cpp.o.d -o CMakeFiles/midifile.dir/src/Binasc.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/Binasc.cpp

libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midifile.dir/src/Binasc.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/Binasc.cpp > CMakeFiles/midifile.dir/src/Binasc.cpp.i

libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midifile.dir/src/Binasc.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/Binasc.cpp -o CMakeFiles/midifile.dir/src/Binasc.cpp.s

libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/flags.make
libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.o: ../libraries/midifile/src/MidiEvent.cpp
libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.o -MF CMakeFiles/midifile.dir/src/MidiEvent.cpp.o.d -o CMakeFiles/midifile.dir/src/MidiEvent.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiEvent.cpp

libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midifile.dir/src/MidiEvent.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiEvent.cpp > CMakeFiles/midifile.dir/src/MidiEvent.cpp.i

libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midifile.dir/src/MidiEvent.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiEvent.cpp -o CMakeFiles/midifile.dir/src/MidiEvent.cpp.s

libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/flags.make
libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.o: ../libraries/midifile/src/MidiEventList.cpp
libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.o -MF CMakeFiles/midifile.dir/src/MidiEventList.cpp.o.d -o CMakeFiles/midifile.dir/src/MidiEventList.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiEventList.cpp

libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midifile.dir/src/MidiEventList.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiEventList.cpp > CMakeFiles/midifile.dir/src/MidiEventList.cpp.i

libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midifile.dir/src/MidiEventList.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiEventList.cpp -o CMakeFiles/midifile.dir/src/MidiEventList.cpp.s

libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/flags.make
libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.o: ../libraries/midifile/src/MidiFile.cpp
libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.o -MF CMakeFiles/midifile.dir/src/MidiFile.cpp.o.d -o CMakeFiles/midifile.dir/src/MidiFile.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiFile.cpp

libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midifile.dir/src/MidiFile.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiFile.cpp > CMakeFiles/midifile.dir/src/MidiFile.cpp.i

libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midifile.dir/src/MidiFile.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiFile.cpp -o CMakeFiles/midifile.dir/src/MidiFile.cpp.s

libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/flags.make
libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.o: ../libraries/midifile/src/MidiMessage.cpp
libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.o: libraries/midifile/CMakeFiles/midifile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.o"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.o -MF CMakeFiles/midifile.dir/src/MidiMessage.cpp.o.d -o CMakeFiles/midifile.dir/src/MidiMessage.cpp.o -c /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiMessage.cpp

libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midifile.dir/src/MidiMessage.cpp.i"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiMessage.cpp > CMakeFiles/midifile.dir/src/MidiMessage.cpp.i

libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midifile.dir/src/MidiMessage.cpp.s"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile/src/MidiMessage.cpp -o CMakeFiles/midifile.dir/src/MidiMessage.cpp.s

# Object files for target midifile
midifile_OBJECTS = \
"CMakeFiles/midifile.dir/src/Options.cpp.o" \
"CMakeFiles/midifile.dir/src/Binasc.cpp.o" \
"CMakeFiles/midifile.dir/src/MidiEvent.cpp.o" \
"CMakeFiles/midifile.dir/src/MidiEventList.cpp.o" \
"CMakeFiles/midifile.dir/src/MidiFile.cpp.o" \
"CMakeFiles/midifile.dir/src/MidiMessage.cpp.o"

# External object files for target midifile
midifile_EXTERNAL_OBJECTS =

libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/src/Options.cpp.o
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/src/Binasc.cpp.o
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/src/MidiEvent.cpp.o
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/src/MidiEventList.cpp.o
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/src/MidiFile.cpp.o
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/src/MidiMessage.cpp.o
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/build.make
libraries/midifile/libmidifile.a: libraries/midifile/CMakeFiles/midifile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/users/user/source/repos/mmm_refactored/python_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libmidifile.a"
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -P CMakeFiles/midifile.dir/cmake_clean_target.cmake
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/midifile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/midifile/CMakeFiles/midifile.dir/build: libraries/midifile/libmidifile.a
.PHONY : libraries/midifile/CMakeFiles/midifile.dir/build

libraries/midifile/CMakeFiles/midifile.dir/clean:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile && $(CMAKE_COMMAND) -P CMakeFiles/midifile.dir/cmake_clean.cmake
.PHONY : libraries/midifile/CMakeFiles/midifile.dir/clean

libraries/midifile/CMakeFiles/midifile.dir/depend:
	cd /mnt/c/users/user/source/repos/mmm_refactored/python_lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/users/user/source/repos/mmm_refactored /mnt/c/users/user/source/repos/mmm_refactored/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile /mnt/c/users/user/source/repos/mmm_refactored/python_lib/libraries/midifile/CMakeFiles/midifile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/midifile/CMakeFiles/midifile.dir/depend
