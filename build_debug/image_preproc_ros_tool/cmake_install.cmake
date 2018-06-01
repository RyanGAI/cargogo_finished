# Install script for directory: /home/kal5-1/cargogo/src/image_preproc_ros_tool

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kal5-1/cargogo/install_debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kal5-1/cargogo/install_debug/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kal5-1/cargogo/install_debug" TYPE PROGRAM FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kal5-1/cargogo/install_debug/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kal5-1/cargogo/install_debug" TYPE PROGRAM FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kal5-1/cargogo/install_debug/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kal5-1/cargogo/install_debug" TYPE FILE FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kal5-1/cargogo/install_debug/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kal5-1/cargogo/install_debug" TYPE FILE FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kal5-1/cargogo/install_debug/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kal5-1/cargogo/install_debug" TYPE FILE FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kal5-1/cargogo/install_debug/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kal5-1/cargogo/install_debug" TYPE FILE FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/LabelDilationInterface.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/ResizeInterface.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/Disp2pointcloudInterface.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/python2.7/dist-packages/image_preproc_ros_tool/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" -m compileall "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/python2.7/dist-packages/image_preproc_ros_tool/interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/image_preproc_ros_tool" TYPE DIRECTORY FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/python2.7/dist-packages/image_preproc_ros_tool/interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/GammaCorrectionConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/LabelDilationConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/ResizeConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/include/image_preproc_ros_tool/Disp2pointcloudConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/python2.7/dist-packages/image_preproc_ros_tool/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" -m compileall "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/python2.7/dist-packages/image_preproc_ros_tool/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/image_preproc_ros_tool" TYPE DIRECTORY FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/python2.7/dist-packages/image_preproc_ros_tool/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/image_preproc_ros_tool.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_preproc_ros_tool/cmake" TYPE FILE FILES
    "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/image_preproc_ros_toolConfig.cmake"
    "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/catkin_generated/installspace/image_preproc_ros_toolConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/src/image_preproc_ros_tool/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/libresize_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libresize_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool" TYPE EXECUTABLE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/image_preproc_ros_tool/resize")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/resize")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/liblabel_dilation_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblabel_dilation_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool" TYPE EXECUTABLE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/image_preproc_ros_tool/label_dilation")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/label_dilation")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/libgamma_correction_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgamma_correction_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool" TYPE EXECUTABLE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/image_preproc_ros_tool/gamma_correction")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/gamma_correction")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/libdisp2pointcloud_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdisp2pointcloud_nodelet.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool" TYPE EXECUTABLE FILES "/home/kal5-1/cargogo/devel_debug/.private/image_preproc_ros_tool/lib/image_preproc_ros_tool/disp2pointcloud")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud"
         OLD_RPATH "/usr/local/cuda/lib64:/home/kal5-1/cargogo/devel_debug/.private/mrt_image_geometry_ros/lib:/home/kal5-1/cargogo/devel_debug/.private/image_preproc/lib:/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib:/opt/ros/kinetic/lib:/opt/mrtsoftware/release/lib:/home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib:/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/gtest:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/image_preproc_ros_tool/disp2pointcloud")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_preproc_ros_tool" TYPE DIRECTORY FILES "/home/kal5-1/cargogo/src/image_preproc_ros_tool/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_preproc_ros_tool" TYPE FILE FILES "/home/kal5-1/cargogo/src/image_preproc_ros_tool/nodelet_plugins.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kal5-1/cargogo/build_debug/image_preproc_ros_tool/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
