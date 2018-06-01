# CMake generated Testfile for 
# Source directory: /home/kal5-1/cargogo/src/motor_interface
# Build directory: /home/kal5-1/cargogo/build/motor_interface
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_motor_interface_gtest_test_motor_interface-test "/home/kal5-1/cargogo/build/motor_interface/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/motor_interface/test_results/motor_interface/gtest-test_motor_interface-test.xml" "--working-dir" "/home/kal5-1/cargogo/src/motor_interface/test" "--return-code" "/home/kal5-1/cargogo/devel/.private/motor_interface/lib/motor_interface/test_motor_interface-test --gtest_output=xml:/home/kal5-1/cargogo/build/motor_interface/test_results/motor_interface/gtest-test_motor_interface-test.xml")
add_test(_ctest_motor_interface_nosetests_test "/home/kal5-1/cargogo/build/motor_interface/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/motor_interface/test_results/motor_interface/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal5-1/cargogo/build/motor_interface/test_results/motor_interface" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-1/cargogo/src/motor_interface/test --with-xunit --xunit-file=/home/kal5-1/cargogo/build/motor_interface/test_results/motor_interface/nosetests-test.xml")
subdirs(gtest)
