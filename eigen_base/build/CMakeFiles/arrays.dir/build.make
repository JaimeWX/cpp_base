# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/westwell/wwws/learn_eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/westwell/wwws/learn_eigen/build

# Include any dependencies generated for this target.
include CMakeFiles/arrays.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/arrays.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/arrays.dir/flags.make

CMakeFiles/arrays.dir/src/arrays.cpp.o: CMakeFiles/arrays.dir/flags.make
CMakeFiles/arrays.dir/src/arrays.cpp.o: ../src/arrays.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/westwell/wwws/learn_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/arrays.dir/src/arrays.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/arrays.dir/src/arrays.cpp.o -c /home/westwell/wwws/learn_eigen/src/arrays.cpp

CMakeFiles/arrays.dir/src/arrays.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/arrays.dir/src/arrays.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/westwell/wwws/learn_eigen/src/arrays.cpp > CMakeFiles/arrays.dir/src/arrays.cpp.i

CMakeFiles/arrays.dir/src/arrays.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/arrays.dir/src/arrays.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/westwell/wwws/learn_eigen/src/arrays.cpp -o CMakeFiles/arrays.dir/src/arrays.cpp.s

# Object files for target arrays
arrays_OBJECTS = \
"CMakeFiles/arrays.dir/src/arrays.cpp.o"

# External object files for target arrays
arrays_EXTERNAL_OBJECTS =

arrays: CMakeFiles/arrays.dir/src/arrays.cpp.o
arrays: CMakeFiles/arrays.dir/build.make
arrays: CMakeFiles/arrays.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/westwell/wwws/learn_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable arrays"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arrays.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/arrays.dir/build: arrays

.PHONY : CMakeFiles/arrays.dir/build

CMakeFiles/arrays.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/arrays.dir/cmake_clean.cmake
.PHONY : CMakeFiles/arrays.dir/clean

CMakeFiles/arrays.dir/depend:
	cd /home/westwell/wwws/learn_eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/westwell/wwws/learn_eigen /home/westwell/wwws/learn_eigen /home/westwell/wwws/learn_eigen/build /home/westwell/wwws/learn_eigen/build /home/westwell/wwws/learn_eigen/build/CMakeFiles/arrays.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/arrays.dir/depend

