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
CMAKE_SOURCE_DIR = /home/longer95479/numberical_analysis/ch4/LS_method

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longer95479/numberical_analysis/ch4/LS_method/build

# Include any dependencies generated for this target.
include CMakeFiles/LS_method.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LS_method.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LS_method.dir/flags.make

CMakeFiles/LS_method.dir/main.cpp.o: CMakeFiles/LS_method.dir/flags.make
CMakeFiles/LS_method.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longer95479/numberical_analysis/ch4/LS_method/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LS_method.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LS_method.dir/main.cpp.o -c /home/longer95479/numberical_analysis/ch4/LS_method/main.cpp

CMakeFiles/LS_method.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LS_method.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longer95479/numberical_analysis/ch4/LS_method/main.cpp > CMakeFiles/LS_method.dir/main.cpp.i

CMakeFiles/LS_method.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LS_method.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longer95479/numberical_analysis/ch4/LS_method/main.cpp -o CMakeFiles/LS_method.dir/main.cpp.s

CMakeFiles/LS_method.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/LS_method.dir/main.cpp.o.requires

CMakeFiles/LS_method.dir/main.cpp.o.provides: CMakeFiles/LS_method.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/LS_method.dir/build.make CMakeFiles/LS_method.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/LS_method.dir/main.cpp.o.provides

CMakeFiles/LS_method.dir/main.cpp.o.provides.build: CMakeFiles/LS_method.dir/main.cpp.o


# Object files for target LS_method
LS_method_OBJECTS = \
"CMakeFiles/LS_method.dir/main.cpp.o"

# External object files for target LS_method
LS_method_EXTERNAL_OBJECTS =

LS_method: CMakeFiles/LS_method.dir/main.cpp.o
LS_method: CMakeFiles/LS_method.dir/build.make
LS_method: CMakeFiles/LS_method.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/longer95479/numberical_analysis/ch4/LS_method/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LS_method"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LS_method.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LS_method.dir/build: LS_method

.PHONY : CMakeFiles/LS_method.dir/build

CMakeFiles/LS_method.dir/requires: CMakeFiles/LS_method.dir/main.cpp.o.requires

.PHONY : CMakeFiles/LS_method.dir/requires

CMakeFiles/LS_method.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LS_method.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LS_method.dir/clean

CMakeFiles/LS_method.dir/depend:
	cd /home/longer95479/numberical_analysis/ch4/LS_method/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longer95479/numberical_analysis/ch4/LS_method /home/longer95479/numberical_analysis/ch4/LS_method /home/longer95479/numberical_analysis/ch4/LS_method/build /home/longer95479/numberical_analysis/ch4/LS_method/build /home/longer95479/numberical_analysis/ch4/LS_method/build/CMakeFiles/LS_method.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LS_method.dir/depend

