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
CMAKE_SOURCE_DIR = /home/longer95479/numberical_analysis/Erlang_formulas

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longer95479/numberical_analysis/Erlang_formulas/build

# Include any dependencies generated for this target.
include CMakeFiles/Erlang_shared.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Erlang_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Erlang_shared.dir/flags.make

CMakeFiles/Erlang_shared.dir/Erlang.cpp.o: CMakeFiles/Erlang_shared.dir/flags.make
CMakeFiles/Erlang_shared.dir/Erlang.cpp.o: ../Erlang.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longer95479/numberical_analysis/Erlang_formulas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Erlang_shared.dir/Erlang.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Erlang_shared.dir/Erlang.cpp.o -c /home/longer95479/numberical_analysis/Erlang_formulas/Erlang.cpp

CMakeFiles/Erlang_shared.dir/Erlang.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Erlang_shared.dir/Erlang.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longer95479/numberical_analysis/Erlang_formulas/Erlang.cpp > CMakeFiles/Erlang_shared.dir/Erlang.cpp.i

CMakeFiles/Erlang_shared.dir/Erlang.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Erlang_shared.dir/Erlang.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longer95479/numberical_analysis/Erlang_formulas/Erlang.cpp -o CMakeFiles/Erlang_shared.dir/Erlang.cpp.s

CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.requires:

.PHONY : CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.requires

CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.provides: CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.requires
	$(MAKE) -f CMakeFiles/Erlang_shared.dir/build.make CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.provides.build
.PHONY : CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.provides

CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.provides.build: CMakeFiles/Erlang_shared.dir/Erlang.cpp.o


# Object files for target Erlang_shared
Erlang_shared_OBJECTS = \
"CMakeFiles/Erlang_shared.dir/Erlang.cpp.o"

# External object files for target Erlang_shared
Erlang_shared_EXTERNAL_OBJECTS =

libErlang_shared.so: CMakeFiles/Erlang_shared.dir/Erlang.cpp.o
libErlang_shared.so: CMakeFiles/Erlang_shared.dir/build.make
libErlang_shared.so: CMakeFiles/Erlang_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/longer95479/numberical_analysis/Erlang_formulas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libErlang_shared.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Erlang_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Erlang_shared.dir/build: libErlang_shared.so

.PHONY : CMakeFiles/Erlang_shared.dir/build

CMakeFiles/Erlang_shared.dir/requires: CMakeFiles/Erlang_shared.dir/Erlang.cpp.o.requires

.PHONY : CMakeFiles/Erlang_shared.dir/requires

CMakeFiles/Erlang_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Erlang_shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Erlang_shared.dir/clean

CMakeFiles/Erlang_shared.dir/depend:
	cd /home/longer95479/numberical_analysis/Erlang_formulas/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longer95479/numberical_analysis/Erlang_formulas /home/longer95479/numberical_analysis/Erlang_formulas /home/longer95479/numberical_analysis/Erlang_formulas/build /home/longer95479/numberical_analysis/Erlang_formulas/build /home/longer95479/numberical_analysis/Erlang_formulas/build/CMakeFiles/Erlang_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Erlang_shared.dir/depend

