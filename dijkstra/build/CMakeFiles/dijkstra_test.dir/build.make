# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/longer95479/numberical_analysis/dijkstra

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longer95479/numberical_analysis/dijkstra/build

# Include any dependencies generated for this target.
include CMakeFiles/dijkstra_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dijkstra_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dijkstra_test.dir/flags.make

CMakeFiles/dijkstra_test.dir/main.cpp.o: CMakeFiles/dijkstra_test.dir/flags.make
CMakeFiles/dijkstra_test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longer95479/numberical_analysis/dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dijkstra_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dijkstra_test.dir/main.cpp.o -c /home/longer95479/numberical_analysis/dijkstra/main.cpp

CMakeFiles/dijkstra_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dijkstra_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longer95479/numberical_analysis/dijkstra/main.cpp > CMakeFiles/dijkstra_test.dir/main.cpp.i

CMakeFiles/dijkstra_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dijkstra_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longer95479/numberical_analysis/dijkstra/main.cpp -o CMakeFiles/dijkstra_test.dir/main.cpp.s

CMakeFiles/dijkstra_test.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/dijkstra_test.dir/main.cpp.o.requires

CMakeFiles/dijkstra_test.dir/main.cpp.o.provides: CMakeFiles/dijkstra_test.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/dijkstra_test.dir/build.make CMakeFiles/dijkstra_test.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/dijkstra_test.dir/main.cpp.o.provides

CMakeFiles/dijkstra_test.dir/main.cpp.o.provides.build: CMakeFiles/dijkstra_test.dir/main.cpp.o


# Object files for target dijkstra_test
dijkstra_test_OBJECTS = \
"CMakeFiles/dijkstra_test.dir/main.cpp.o"

# External object files for target dijkstra_test
dijkstra_test_EXTERNAL_OBJECTS =

dijkstra_test: CMakeFiles/dijkstra_test.dir/main.cpp.o
dijkstra_test: CMakeFiles/dijkstra_test.dir/build.make
dijkstra_test: libdijkstra_shared.so
dijkstra_test: CMakeFiles/dijkstra_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/longer95479/numberical_analysis/dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dijkstra_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dijkstra_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dijkstra_test.dir/build: dijkstra_test

.PHONY : CMakeFiles/dijkstra_test.dir/build

CMakeFiles/dijkstra_test.dir/requires: CMakeFiles/dijkstra_test.dir/main.cpp.o.requires

.PHONY : CMakeFiles/dijkstra_test.dir/requires

CMakeFiles/dijkstra_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dijkstra_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dijkstra_test.dir/clean

CMakeFiles/dijkstra_test.dir/depend:
	cd /home/longer95479/numberical_analysis/dijkstra/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longer95479/numberical_analysis/dijkstra /home/longer95479/numberical_analysis/dijkstra /home/longer95479/numberical_analysis/dijkstra/build /home/longer95479/numberical_analysis/dijkstra/build /home/longer95479/numberical_analysis/dijkstra/build/CMakeFiles/dijkstra_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dijkstra_test.dir/depend

