# CMake generated Testfile for 
# Source directory: /home/kal5-1/cargogo/src/rosinterface_handler
# Build directory: /home/kal5-1/cargogo/build_debug/rosinterface_handler
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosinterface_handler_rostest_test_launch_rosinterface_handler.test "/home/kal5-1/cargogo/build_debug/rosinterface_handler/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/rosinterface_handler/test_results/rosinterface_handler/rostest-test_launch_rosinterface_handler.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/rosinterface_handler --package=rosinterface_handler --results-filename test_launch_rosinterface_handler.xml --results-base-dir \"/home/kal5-1/cargogo/build_debug/rosinterface_handler/test_results\" /home/kal5-1/cargogo/src/rosinterface_handler/test/launch/rosinterface_handler.test ")
add_test(_ctest_rosinterface_handler_rostest_test_launch_rosinterface_handler_python.test "/home/kal5-1/cargogo/build_debug/rosinterface_handler/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/rosinterface_handler/test_results/rosinterface_handler/rostest-test_launch_rosinterface_handler_python.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/rosinterface_handler --package=rosinterface_handler --results-filename test_launch_rosinterface_handler_python.xml --results-base-dir \"/home/kal5-1/cargogo/build_debug/rosinterface_handler/test_results\" /home/kal5-1/cargogo/src/rosinterface_handler/test/launch/rosinterface_handler_python.test ")
subdirs(gtest)