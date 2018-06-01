# CMake generated Testfile for 
# Source directory: /home/kal5-1/cargogo/src/motor_interface_ros_tool
# Build directory: /home/kal5-1/cargogo/build/motor_interface_ros_tool
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_motor_interface_ros_tool_nosetests_test "/home/kal5-1/cargogo/build/motor_interface_ros_tool/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/motor_interface_ros_tool/test_results/motor_interface_ros_tool/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal5-1/cargogo/build/motor_interface_ros_tool/test_results/motor_interface_ros_tool" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-1/cargogo/src/motor_interface_ros_tool/test --with-xunit --xunit-file=/home/kal5-1/cargogo/build/motor_interface_ros_tool/test_results/motor_interface_ros_tool/nosetests-test.xml")
subdirs(gtest)
