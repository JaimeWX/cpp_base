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
include CMakeFiles/matrices_and_vectors.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matrices_and_vectors.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrices_and_vectors.dir/flags.make

CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.o: CMakeFiles/matrices_and_vectors.dir/flags.make
CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.o: ../src/matrices_and_vectors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/westwell/wwws/learn_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.o -c /home/westwell/wwws/learn_eigen/src/matrices_and_vectors.cpp

CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/westwell/wwws/learn_eigen/src/matrices_and_vectors.cpp > CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.i

CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/westwell/wwws/learn_eigen/src/matrices_and_vectors.cpp -o CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.s

# Object files for target matrices_and_vectors
matrices_and_vectors_OBJECTS = \
"CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.o"

# External object files for target matrices_and_vectors
matrices_and_vectors_EXTERNAL_OBJECTS =

matrices_and_vectors: CMakeFiles/matrices_and_vectors.dir/src/matrices_and_vectors.cpp.o
matrices_and_vectors: CMakeFiles/matrices_and_vectors.dir/build.make
matrices_and_vectors: CMakeFiles/matrices_and_vectors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/westwell/wwws/learn_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable matrices_and_vectors"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrices_and_vectors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrices_and_vectors.dir/build: matrices_and_vectors

.PHONY : CMakeFiles/matrices_and_vectors.dir/build

CMakeFiles/matrices_and_vectors.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrices_and_vectors.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrices_and_vectors.dir/clean

CMakeFiles/matrices_and_vectors.dir/depend:
	cd /home/westwell/wwws/learn_eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/westwell/wwws/learn_eigen /home/westwell/wwws/learn_eigen /home/westwell/wwws/learn_eigen/build /home/westwell/wwws/learn_eigen/build /home/westwell/wwws/learn_eigen/build/CMakeFiles/matrices_and_vectors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrices_and_vectors.dir/depend
