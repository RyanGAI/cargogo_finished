# CMake generated Testfile for 
# Source directory: /home/kal5-1/cargogo/src/perception_pcl/pcl_ros
# Build directory: /home/kal5-1/cargogo/build/pcl_ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pcl_ros_rostest_tests_test_tf_message_filter_pcl.launch "/home/kal5-1/cargogo/build/pcl_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/pcl_ros/test_results/pcl_ros/rostest-tests_test_tf_message_filter_pcl.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/perception_pcl/pcl_ros --package=pcl_ros --results-filename tests_test_tf_message_filter_pcl.xml --results-base-dir \"/home/kal5-1/cargogo/build/pcl_ros/test_results\" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros/tests/test_tf_message_filter_pcl.launch ")
add_test(_ctest_pcl_ros_rostest_sample_normal_3d__gui_false.launch "/home/kal5-1/cargogo/build/pcl_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/pcl_ros/test_results/pcl_ros/rostest-sample_normal_3d__gui_false.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/perception_pcl/pcl_ros --package=pcl_ros --results-filename sample_normal_3d__gui_false.xml --results-base-dir \"/home/kal5-1/cargogo/build/pcl_ros/test_results\" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros/samples/pcl_ros/features/sample_normal_3d.launch gui:=false")
add_test(_ctest_pcl_ros_rostest_sample_statistical_outlier_removal__gui_false.launch "/home/kal5-1/cargogo/build/pcl_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/pcl_ros/test_results/pcl_ros/rostest-sample_statistical_outlier_removal__gui_false.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/perception_pcl/pcl_ros --package=pcl_ros --results-filename sample_statistical_outlier_removal__gui_false.xml --results-base-dir \"/home/kal5-1/cargogo/build/pcl_ros/test_results\" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros/samples/pcl_ros/filters/sample_statistical_outlier_removal.launch gui:=false")
add_test(_ctest_pcl_ros_rostest_sample_voxel_grid__gui_false.launch "/home/kal5-1/cargogo/build/pcl_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/pcl_ros/test_results/pcl_ros/rostest-sample_voxel_grid__gui_false.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/perception_pcl/pcl_ros --package=pcl_ros --results-filename sample_voxel_grid__gui_false.xml --results-base-dir \"/home/kal5-1/cargogo/build/pcl_ros/test_results\" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros/samples/pcl_ros/filters/sample_voxel_grid.launch gui:=false")
add_test(_ctest_pcl_ros_rostest_sample_extract_clusters__gui_false.launch "/home/kal5-1/cargogo/build/pcl_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/pcl_ros/test_results/pcl_ros/rostest-sample_extract_clusters__gui_false.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/perception_pcl/pcl_ros --package=pcl_ros --results-filename sample_extract_clusters__gui_false.xml --results-base-dir \"/home/kal5-1/cargogo/build/pcl_ros/test_results\" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros/samples/pcl_ros/segmentation/sample_extract_clusters.launch gui:=false")
add_test(_ctest_pcl_ros_rostest_sample_convex_hull__gui_false.launch "/home/kal5-1/cargogo/build/pcl_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kal5-1/cargogo/build/pcl_ros/test_results/pcl_ros/rostest-sample_convex_hull__gui_false.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-1/cargogo/src/perception_pcl/pcl_ros --package=pcl_ros --results-filename sample_convex_hull__gui_false.xml --results-base-dir \"/home/kal5-1/cargogo/build/pcl_ros/test_results\" /home/kal5-1/cargogo/src/perception_pcl/pcl_ros/samples/pcl_ros/surface/sample_convex_hull.launch gui:=false")
subdirs(gtest)
