# CMake generated Testfile for 
# Source directory: /home/kal5-1/cargogo/src/stargazer
# Build directory: /home/kal5-1/cargogo/build_debug/stargazer
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_stargazer_gtest_test_landmark-test "/home/kal5-1/cargogo/build_debug/stargazer/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer/gtest-test_landmark-test.xml" "--working-dir" "/home/kal5-1/cargogo/src/stargazer/test" "--return-code" "/home/kal5-1/cargogo/devel_debug/.private/stargazer/lib/stargazer/test_landmark-test --gtest_output=xml:/home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer/gtest-test_landmark-test.xml")
add_test(_ctest_stargazer_gtest_test_ConfigHandler-test "/home/kal5-1/cargogo/build_debug/stargazer/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer/gtest-test_ConfigHandler-test.xml" "--working-dir" "/home/kal5-1/cargogo/src/stargazer/test" "--return-code" "/home/kal5-1/cargogo/devel_debug/.private/stargazer/lib/stargazer/test_ConfigHandler-test --gtest_output=xml:/home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer/gtest-test_ConfigHandler-test.xml")
add_test(_ctest_stargazer_nosetests_test "/home/kal5-1/cargogo/build_debug/stargazer/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-1/cargogo/src/stargazer/test --with-xunit --xunit-file=/home/kal5-1/cargogo/build_debug/stargazer/test_results/stargazer/nosetests-test.xml")
subdirs(gtest)