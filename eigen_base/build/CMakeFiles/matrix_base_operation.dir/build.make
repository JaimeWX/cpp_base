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
include CMakeFiles/matrix_base_operation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matrix_base_operation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_base_operation.dir/flags.make

CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.o: CMakeFiles/matrix_base_operation.dir/flags.make
CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.o: ../src/matrix_base_operation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/westwell/wwws/learn_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.o -c /home/westwell/wwws/learn_eigen/src/matrix_base_operation.cpp

CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/westwell/wwws/learn_eigen/src/matrix_base_operation.cpp > CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.i

CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/westwell/wwws/learn_eigen/src/matrix_base_operation.cpp -o CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.s

# Object files for target matrix_base_operation
matrix_base_operation_OBJECTS = \
"CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.o"

# External object files for target matrix_base_operation
matrix_base_operation_EXTERNAL_OBJECTS =

matrix_base_operation: CMakeFiles/matrix_base_operation.dir/src/matrix_base_operation.cpp.o
matrix_base_operation: CMakeFiles/matrix_base_operation.dir/build.make
matrix_base_operation: CMakeFiles/matrix_base_operation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/westwell/wwws/learn_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable matrix_base_operation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_base_operation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_base_operation.dir/build: matrix_base_operation

.PHONY : CMakeFiles/matrix_base_operation.dir/build

CMakeFiles/matrix_base_operation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_base_operation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrix_base_operation.dir/clean

CMakeFiles/matrix_base_operation.dir/depend:
	cd /home/westwell/wwws/learn_eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/westwell/wwws/learn_eigen /home/westwell/wwws/learn_eigen /home/westwell/wwws/learn_eigen/build /home/westwell/wwws/learn_eigen/build /home/westwell/wwws/learn_eigen/build/CMakeFiles/matrix_base_operation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_base_operation.dir/depend
