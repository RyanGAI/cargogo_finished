# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(mrt_cv_bridge_ros_CONFIG_INCLUDED)
  return()
endif()
set(mrt_cv_bridge_ros_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(mrt_cv_bridge_ros_SOURCE_PREFIX /home/kal5-1/cargogo/src/mrt_cv_bridge_ros)
  set(mrt_cv_bridge_ros_DEVEL_PREFIX /home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros)
  set(mrt_cv_bridge_ros_INSTALL_PREFIX "")
  set(mrt_cv_bridge_ros_PREFIX ${mrt_cv_bridge_ros_DEVEL_PREFIX})
else()
  set(mrt_cv_bridge_ros_SOURCE_PREFIX "")
  set(mrt_cv_bridge_ros_DEVEL_PREFIX "")
  set(mrt_cv_bridge_ros_INSTALL_PREFIX /home/kal5-1/cargogo/install_debug)
  set(mrt_cv_bridge_ros_PREFIX ${mrt_cv_bridge_ros_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'mrt_cv_bridge_ros' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(mrt_cv_bridge_ros_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/kal5-1/cargogo/src/mrt_cv_bridge_ros/include;/usr/include;/opt/mrtsoftware/release/include/opencv-3.3.1;/opt/mrtsoftware/release/include/opencv-3.3.1/opencv " STREQUAL " ")
  set(mrt_cv_bridge_ros_INCLUDE_DIRS "")
  set(_include_dirs "/home/kal5-1/cargogo/src/mrt_cv_bridge_ros/include;/usr/include;/opt/mrtsoftware/release/include/opencv-3.3.1;/opt/mrtsoftware/release/include/opencv-3.3.1/opencv")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Fabian Poggenhans <fabian.poggenhans@kit.edu>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${mrt_cv_bridge_ros_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'mrt_cv_bridge_ros' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'mrt_cv_bridge_ros' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/kal5-1/cargogo/src/mrt_cv_bridge_ros/${idir}'.  ${_report}")
    endif()
    _list_append_unique(mrt_cv_bridge_ros_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "mrt_cv_bridge_ros;/usr/lib/x86_64-linux-gnu/libboost_math_c99l.so;/usr/lib/x86_64-linux-gnu/libboost_wserialization.so;/usr/lib/x86_64-linux-gnu/libboost_math_tr1l.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_random.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_log_setup.so;/usr/lib/x86_64-linux-gnu/libboost_prg_exec_monitor.so;/usr/lib/x86_64-linux-gnu/libboost_wave.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_signals.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_math_c99.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_context.so;/usr/lib/x86_64-linux-gnu/libboost_locale.so;/usr/lib/x86_64-linux-gnu/libboost_timer.so;/usr/lib/x86_64-linux-gnu/libboost_math_tr1.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_graph.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so;/usr/lib/x86_64-linux-gnu/libboost_math_tr1f.so;/usr/lib/x86_64-linux-gnu/libboost_math_c99f.so;/usr/lib/x86_64-linux-gnu/libboost_log.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/opt/mrtsoftware/release/lib/libopencv_calib3d3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_core3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudaarithm3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudabgsegm3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudacodec3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudafeatures2d3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudafilters3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudaimgproc3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudalegacy3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudaobjdetect3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudaoptflow3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudastereo3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudawarping3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cudev3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_dnn3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_features2d3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_flann3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_highgui3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_imgcodecs3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_imgproc3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_ml3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_objdetect3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_photo3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_shape3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_stitching3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_superres3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_video3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_videoio3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_videostab3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_viz3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_aruco3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_bgsegm3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_bioinspired3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_ccalib3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_cvv3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_datasets3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_dpm3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_face3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_fuzzy3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_hdf3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_img_hash3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_line_descriptor3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_optflow3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_phase_unwrapping3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_plot3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_reg3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_rgbd3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_saliency3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_stereo3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_structured_light3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_surface_matching3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_text3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_tracking3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_xfeatures2d3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_ximgproc3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_xobjdetect3.so.3.3.1;/opt/mrtsoftware/release/lib/libopencv_xphoto3.so.3.3.1")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND mrt_cv_bridge_ros_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND mrt_cv_bridge_ros_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND mrt_cv_bridge_ros_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/kal5-1/cargogo/devel_debug/.private/mrt_cv_bridge_ros/lib;/home/kal5-1/cargogo/devel_debug/lib;/home/kal5-1/cargogo/devel/lib;/opt/mrtsoftware/local/lib;/opt/mrtsoftware/release/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(mrt_cv_bridge_ros_LIBRARY_DIRS ${lib_path})
      list(APPEND mrt_cv_bridge_ros_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'mrt_cv_bridge_ros'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND mrt_cv_bridge_ros_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(mrt_cv_bridge_ros_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${mrt_cv_bridge_ros_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "rosconsole;sensor_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 mrt_cv_bridge_ros_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${mrt_cv_bridge_ros_dep}_FOUND)
      find_package(${mrt_cv_bridge_ros_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${mrt_cv_bridge_ros_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(mrt_cv_bridge_ros_INCLUDE_DIRS ${${mrt_cv_bridge_ros_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(mrt_cv_bridge_ros_LIBRARIES ${mrt_cv_bridge_ros_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${mrt_cv_bridge_ros_dep}_LIBRARIES})
  _list_append_deduplicate(mrt_cv_bridge_ros_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(mrt_cv_bridge_ros_LIBRARIES ${mrt_cv_bridge_ros_LIBRARIES})

  _list_append_unique(mrt_cv_bridge_ros_LIBRARY_DIRS ${${mrt_cv_bridge_ros_dep}_LIBRARY_DIRS})
  list(APPEND mrt_cv_bridge_ros_EXPORTED_TARGETS ${${mrt_cv_bridge_ros_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${mrt_cv_bridge_ros_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
