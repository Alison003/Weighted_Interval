# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.21

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Alison\CLionProjects\Weighted_Interval

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Alison\CLionProjects\Weighted_Interval\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Weighted_Interval.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Weighted_Interval.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Weighted_Interval.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Weighted_Interval.dir/flags.make

CMakeFiles/Weighted_Interval.dir/main.cpp.obj: CMakeFiles/Weighted_Interval.dir/flags.make
CMakeFiles/Weighted_Interval.dir/main.cpp.obj: ../main.cpp
CMakeFiles/Weighted_Interval.dir/main.cpp.obj: CMakeFiles/Weighted_Interval.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Alison\CLionProjects\Weighted_Interval\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Weighted_Interval.dir/main.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Weighted_Interval.dir/main.cpp.obj -MF CMakeFiles\Weighted_Interval.dir\main.cpp.obj.d -o CMakeFiles\Weighted_Interval.dir\main.cpp.obj -c C:\Users\Alison\CLionProjects\Weighted_Interval\main.cpp

CMakeFiles/Weighted_Interval.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Weighted_Interval.dir/main.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Alison\CLionProjects\Weighted_Interval\main.cpp > CMakeFiles\Weighted_Interval.dir\main.cpp.i

CMakeFiles/Weighted_Interval.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Weighted_Interval.dir/main.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.3\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Alison\CLionProjects\Weighted_Interval\main.cpp -o CMakeFiles\Weighted_Interval.dir\main.cpp.s

# Object files for target Weighted_Interval
Weighted_Interval_OBJECTS = \
"CMakeFiles/Weighted_Interval.dir/main.cpp.obj"

# External object files for target Weighted_Interval
Weighted_Interval_EXTERNAL_OBJECTS =

Weighted_Interval.exe: CMakeFiles/Weighted_Interval.dir/main.cpp.obj
Weighted_Interval.exe: CMakeFiles/Weighted_Interval.dir/build.make
Weighted_Interval.exe: CMakeFiles/Weighted_Interval.dir/linklibs.rsp
Weighted_Interval.exe: CMakeFiles/Weighted_Interval.dir/objects1.rsp
Weighted_Interval.exe: CMakeFiles/Weighted_Interval.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Alison\CLionProjects\Weighted_Interval\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Weighted_Interval.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Weighted_Interval.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Weighted_Interval.dir/build: Weighted_Interval.exe
.PHONY : CMakeFiles/Weighted_Interval.dir/build

CMakeFiles/Weighted_Interval.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Weighted_Interval.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Weighted_Interval.dir/clean

CMakeFiles/Weighted_Interval.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Alison\CLionProjects\Weighted_Interval C:\Users\Alison\CLionProjects\Weighted_Interval C:\Users\Alison\CLionProjects\Weighted_Interval\cmake-build-debug C:\Users\Alison\CLionProjects\Weighted_Interval\cmake-build-debug C:\Users\Alison\CLionProjects\Weighted_Interval\cmake-build-debug\CMakeFiles\Weighted_Interval.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Weighted_Interval.dir/depend

