# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.6.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.6.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/xwu/phd_xwu/UCMGEL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/xwu/phd_xwu/UCMGEL

# Include any dependencies generated for this target.
include Solvers/LS/CMakeFiles/POTRF.dir/depend.make

# Include the progress variables for this target.
include Solvers/LS/CMakeFiles/POTRF.dir/progress.make

# Include the compile flags for this target's objects.
include Solvers/LS/CMakeFiles/POTRF.dir/flags.make

Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o: Solvers/LS/CMakeFiles/POTRF.dir/flags.make
Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o: Solvers/LS/POTRF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/xwu/phd_xwu/UCMGEL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/LS && /Users/xwu/software/openmp/bin/mpicxx   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/POTRF.dir/POTRF.cpp.o -c /Users/xwu/phd_xwu/UCMGEL/Solvers/LS/POTRF.cpp

Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POTRF.dir/POTRF.cpp.i"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/LS && /Users/xwu/software/openmp/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/xwu/phd_xwu/UCMGEL/Solvers/LS/POTRF.cpp > CMakeFiles/POTRF.dir/POTRF.cpp.i

Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POTRF.dir/POTRF.cpp.s"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/LS && /Users/xwu/software/openmp/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/xwu/phd_xwu/UCMGEL/Solvers/LS/POTRF.cpp -o CMakeFiles/POTRF.dir/POTRF.cpp.s

Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.requires:

.PHONY : Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.requires

Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.provides: Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.requires
	$(MAKE) -f Solvers/LS/CMakeFiles/POTRF.dir/build.make Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.provides.build
.PHONY : Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.provides

Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.provides.build: Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o


# Object files for target POTRF
POTRF_OBJECTS = \
"CMakeFiles/POTRF.dir/POTRF.cpp.o"

# External object files for target POTRF
POTRF_EXTERNAL_OBJECTS =

Solvers/LS/POTRF: Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o
Solvers/LS/POTRF: Solvers/LS/CMakeFiles/POTRF.dir/build.make
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchoskokkoscomm.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchoskokkoscompat.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchosremainder.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchosnumerics.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchoscomm.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchosparameterlist.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libteuchoscore.a
Solvers/LS/POTRF: /Users/xwu/phd_xwu/trilinos-12.12.1-Source2/installation2/lib/libkokkoscore.a
Solvers/LS/POTRF: /usr/lib/libdl.dylib
Solvers/LS/POTRF: /usr/lib/liblapack.dylib
Solvers/LS/POTRF: /usr/lib/libblas.dylib
Solvers/LS/POTRF: Solvers/LS/CMakeFiles/POTRF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/xwu/phd_xwu/UCMGEL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable POTRF"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/LS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/POTRF.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Solvers/LS/CMakeFiles/POTRF.dir/build: Solvers/LS/POTRF

.PHONY : Solvers/LS/CMakeFiles/POTRF.dir/build

Solvers/LS/CMakeFiles/POTRF.dir/requires: Solvers/LS/CMakeFiles/POTRF.dir/POTRF.cpp.o.requires

.PHONY : Solvers/LS/CMakeFiles/POTRF.dir/requires

Solvers/LS/CMakeFiles/POTRF.dir/clean:
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/LS && $(CMAKE_COMMAND) -P CMakeFiles/POTRF.dir/cmake_clean.cmake
.PHONY : Solvers/LS/CMakeFiles/POTRF.dir/clean

Solvers/LS/CMakeFiles/POTRF.dir/depend:
	cd /Users/xwu/phd_xwu/UCMGEL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/xwu/phd_xwu/UCMGEL /Users/xwu/phd_xwu/UCMGEL/Solvers/LS /Users/xwu/phd_xwu/UCMGEL /Users/xwu/phd_xwu/UCMGEL/Solvers/LS /Users/xwu/phd_xwu/UCMGEL/Solvers/LS/CMakeFiles/POTRF.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Solvers/LS/CMakeFiles/POTRF.dir/depend
