# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/kal5-1/cargogo/src/perception_pcl/pcl_ros

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kal5-1/cargogo/build_debug/pcl_ros

# Utility rule file for clean_test_results_pcl_ros.

# Include the progress variables for this target.
include CMakeFiles/clean_test_results_pcl_ros.dir/progress.make

CMakeFiles/clean_test_results_pcl_ros:
	/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/kal5-1/cargogo/build_debug/pcl_ros/test_results/pcl_ros

clean_test_results_pcl_ros: CMakeFiles/clean_test_results_pcl_ros
clean_test_results_pcl_ros: CMakeFiles/clean_test_results_pcl_ros.dir/build.make

.PHONY : clean_test_results_pcl_ros

# Rule to build all files generated by this target.
CMakeFiles/clean_test_results_pcl_ros.dir/build: clean_test_results_pcl_ros

.PHONY : CMakeFiles/clean_test_results_pcl_ros.dir/build

CMakeFiles/clean_test_results_pcl_ros.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_pcl_ros.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clean_test_results_pcl_ros.dir/clean

CMakeFiles/clean_test_results_pcl_ros.dir/depend:
	cd /home/kal5-1/cargogo/build_debug/pcl_ros && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros /home/kal5-1/cargogo/src/perception_pcl/pcl_ros /home/kal5-1/cargogo/build_debug/pcl_ros /home/kal5-1/cargogo/build_debug/pcl_ros /home/kal5-1/cargogo/build_debug/pcl_ros/CMakeFiles/clean_test_results_pcl_ros.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clean_test_results_pcl_ros.dir/depend
