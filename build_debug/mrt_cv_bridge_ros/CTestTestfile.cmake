# CMake generated Testfile for 
# Source directory: /home/kal5-1/cargogo/src/mrt_cv_bridge_ros
# Build directory: /home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mrt_cv_bridge_ros_gtest_test_mrt_cv_bridge_ros-test "/home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/test_results/mrt_cv_bridge_ros/gtest-test_mrt_cv_bridge_ros-test.xml" "--working-dir" "/home/kal5-1/cargogo/src/mrt_cv_bridge_ros/test" "--return-code" "/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib/mrt_cv_bridge_ros/test_mrt_cv_bridge_ros-test --gtest_output=xml:/home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/test_results/mrt_cv_bridge_ros/gtest-test_mrt_cv_bridge_ros-test.xml")
add_test(_ctest_mrt_cv_bridge_ros_nosetests_test "/home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/test_results/mrt_cv_bridge_ros/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/test_results/mrt_cv_bridge_ros" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-1/cargogo/src/mrt_cv_bridge_ros/test --with-xunit --xunit-file=/home/kal5-1/cargogo/build_debug/mrt_cv_bridge_ros/test_results/mrt_cv_bridge_ros/nosetests-test.xml")
subdirs(gtest)
