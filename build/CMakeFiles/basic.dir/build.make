# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/shashanks/Documents/demo/compiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shashanks/Documents/demo/compiler/build

# Include any dependencies generated for this target.
include CMakeFiles/basic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/basic.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/basic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/basic.dir/flags.make

CMakeFiles/basic.dir/src/main.cpp.o: CMakeFiles/basic.dir/flags.make
CMakeFiles/basic.dir/src/main.cpp.o: /home/shashanks/Documents/demo/compiler/src/main.cpp
CMakeFiles/basic.dir/src/main.cpp.o: CMakeFiles/basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shashanks/Documents/demo/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/basic.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/basic.dir/src/main.cpp.o -MF CMakeFiles/basic.dir/src/main.cpp.o.d -o CMakeFiles/basic.dir/src/main.cpp.o -c /home/shashanks/Documents/demo/compiler/src/main.cpp

CMakeFiles/basic.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/basic.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shashanks/Documents/demo/compiler/src/main.cpp > CMakeFiles/basic.dir/src/main.cpp.i

CMakeFiles/basic.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/basic.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shashanks/Documents/demo/compiler/src/main.cpp -o CMakeFiles/basic.dir/src/main.cpp.s

# Object files for target basic
basic_OBJECTS = \
"CMakeFiles/basic.dir/src/main.cpp.o"

# External object files for target basic
basic_EXTERNAL_OBJECTS =

basic: CMakeFiles/basic.dir/src/main.cpp.o
basic: CMakeFiles/basic.dir/build.make
basic: CMakeFiles/basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/shashanks/Documents/demo/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable basic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/basic.dir/build: basic
.PHONY : CMakeFiles/basic.dir/build

CMakeFiles/basic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/basic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/basic.dir/clean

CMakeFiles/basic.dir/depend:
	cd /home/shashanks/Documents/demo/compiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shashanks/Documents/demo/compiler /home/shashanks/Documents/demo/compiler /home/shashanks/Documents/demo/compiler/build /home/shashanks/Documents/demo/compiler/build /home/shashanks/Documents/demo/compiler/build/CMakeFiles/basic.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/basic.dir/depend

