# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build

# Include any dependencies generated for this target.
include CMakeFiles/messagebuus.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/messagebuus.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/messagebuus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/messagebuus.dir/flags.make

CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o: CMakeFiles/messagebuus.dir/flags.make
CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o: /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/json_serializer.cpp
CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o: CMakeFiles/messagebuus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o -MF CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o.d -o CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o -c /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/json_serializer.cpp

CMakeFiles/messagebuus.dir/src/json_serializer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/messagebuus.dir/src/json_serializer.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/json_serializer.cpp > CMakeFiles/messagebuus.dir/src/json_serializer.cpp.i

CMakeFiles/messagebuus.dir/src/json_serializer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/messagebuus.dir/src/json_serializer.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/json_serializer.cpp -o CMakeFiles/messagebuus.dir/src/json_serializer.cpp.s

CMakeFiles/messagebuus.dir/src/main.cpp.o: CMakeFiles/messagebuus.dir/flags.make
CMakeFiles/messagebuus.dir/src/main.cpp.o: /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/main.cpp
CMakeFiles/messagebuus.dir/src/main.cpp.o: CMakeFiles/messagebuus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/messagebuus.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/messagebuus.dir/src/main.cpp.o -MF CMakeFiles/messagebuus.dir/src/main.cpp.o.d -o CMakeFiles/messagebuus.dir/src/main.cpp.o -c /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/main.cpp

CMakeFiles/messagebuus.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/messagebuus.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/main.cpp > CMakeFiles/messagebuus.dir/src/main.cpp.i

CMakeFiles/messagebuus.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/messagebuus.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/src/main.cpp -o CMakeFiles/messagebuus.dir/src/main.cpp.s

# Object files for target messagebuus
messagebuus_OBJECTS = \
"CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o" \
"CMakeFiles/messagebuus.dir/src/main.cpp.o"

# External object files for target messagebuus
messagebuus_EXTERNAL_OBJECTS =

messagebuus: CMakeFiles/messagebuus.dir/src/json_serializer.cpp.o
messagebuus: CMakeFiles/messagebuus.dir/src/main.cpp.o
messagebuus: CMakeFiles/messagebuus.dir/build.make
messagebuus: CMakeFiles/messagebuus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable messagebuus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/messagebuus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/messagebuus.dir/build: messagebuus
.PHONY : CMakeFiles/messagebuus.dir/build

CMakeFiles/messagebuus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/messagebuus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/messagebuus.dir/clean

CMakeFiles/messagebuus.dir/depend:
	cd /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build /Users/codytorgovnik/Desktop/c++-practice/low-latency/message-bus/build/CMakeFiles/messagebuus.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/messagebuus.dir/depend
