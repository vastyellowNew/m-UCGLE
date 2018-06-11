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
include Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/depend.make

# Include the progress variables for this target.
include Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/progress.make

# Include the compile flags for this target's objects.
include Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/flags.make

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/flags.make
Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o: Solvers/Arnoldi/blockKrylovSchur.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/xwu/phd_xwu/UCMGEL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi && /Users/xwu/software/openmp/bin/mpicxx   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o -c /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi/blockKrylovSchur.cpp

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.i"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi && /Users/xwu/software/openmp/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi/blockKrylovSchur.cpp > CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.i

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.s"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi && /Users/xwu/software/openmp/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi/blockKrylovSchur.cpp -o CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.s

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.requires:

.PHONY : Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.requires

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.provides: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.requires
	$(MAKE) -f Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/build.make Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.provides.build
.PHONY : Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.provides

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.provides.build: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o


# Object files for target blockKrylovSchur
blockKrylovSchur_OBJECTS = \
"CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o"

# External object files for target blockKrylovSchur
blockKrylovSchur_EXTERNAL_OBJECTS =

Solvers/Arnoldi/blockKrylovSchur: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o
Solvers/Arnoldi/blockKrylovSchur: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/build.make
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libepetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoskokkoscomm.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoskokkoscompat.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosremainder.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosnumerics.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoscomm.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosparameterlist.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoscore.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkoscore.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libanasazitpetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libModeLaplace.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libanasaziepetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libanasazi.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libbelostpetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libbelosepetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libbelos.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libaztecoo.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libthyratpetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libthyraepetraext.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libthyraepetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libthyracore.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libepetraext.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtpetraext.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtpetrainout.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtpetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkostsqr.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtpetraclassiclinalg.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtpetraclassicnodeapi.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtpetraclassic.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtriutils.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libepetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/librtop.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkoskernels.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoskokkoscomm.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoskokkoscompat.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosremainder.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosnumerics.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoscomm.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosparameterlist.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoscore.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkosalgorithms.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkoscontainers.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkoscore.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libamesos.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libepetraext.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtrilinosss.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libtriutils.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libepetra.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoskokkoscomm.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoskokkoscompat.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosremainder.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosnumerics.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoscomm.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchosparameterlist.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libteuchoscore.a
Solvers/Arnoldi/blockKrylovSchur: /Users/xwu/phd_xwu/trilinos-12.12.1-Source/installation/lib/libkokkoscore.a
Solvers/Arnoldi/blockKrylovSchur: /usr/lib/liblapack.dylib
Solvers/Arnoldi/blockKrylovSchur: /usr/lib/libblas.dylib
Solvers/Arnoldi/blockKrylovSchur: /usr/lib/libdl.dylib
Solvers/Arnoldi/blockKrylovSchur: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/xwu/phd_xwu/UCMGEL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable blockKrylovSchur"
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blockKrylovSchur.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/build: Solvers/Arnoldi/blockKrylovSchur

.PHONY : Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/build

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/requires: Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/blockKrylovSchur.cpp.o.requires

.PHONY : Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/requires

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/clean:
	cd /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi && $(CMAKE_COMMAND) -P CMakeFiles/blockKrylovSchur.dir/cmake_clean.cmake
.PHONY : Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/clean

Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/depend:
	cd /Users/xwu/phd_xwu/UCMGEL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/xwu/phd_xwu/UCMGEL /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi /Users/xwu/phd_xwu/UCMGEL /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi /Users/xwu/phd_xwu/UCMGEL/Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Solvers/Arnoldi/CMakeFiles/blockKrylovSchur.dir/depend

