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


if(pcl_ros_CONFIG_INCLUDED)
  return()
endif()
set(pcl_ros_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(pcl_ros_SOURCE_PREFIX /home/kal5-1/cargogo/src/perception_pcl/pcl_ros)
  set(pcl_ros_DEVEL_PREFIX /home/kal5-1/cargogo/devel_debug/.private/pcl_ros)
  set(pcl_ros_INSTALL_PREFIX "")
  set(pcl_ros_PREFIX ${pcl_ros_DEVEL_PREFIX})
else()
  set(pcl_ros_SOURCE_PREFIX "")
  set(pcl_ros_DEVEL_PREFIX "")
  set(pcl_ros_INSTALL_PREFIX /home/kal5-1/cargogo/install_debug)
  set(pcl_ros_PREFIX ${pcl_ros_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'pcl_ros' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(pcl_ros_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/include;/home/kal5-1/cargogo/src/perception_pcl/pcl_ros/include;/usr/include;/usr/include/eigen3;/opt/mrtsoftware/release/include/pcl-1.8;/opt/mrtsoftware/release/include/vtk-6.3;/usr/include/x86_64-linux-gnu;/usr/include/jsoncpp;/usr/include/ni " STREQUAL " ")
  set(pcl_ros_INCLUDE_DIRS "")
  set(_include_dirs "/home/kal5-1/cargogo/devel_debug/.private/pcl_ros/include;/home/kal5-1/cargogo/src/perception_pcl/pcl_ros/include;/usr/include;/usr/include/eigen3;/opt/mrtsoftware/release/include/pcl-1.8;/opt/mrtsoftware/release/include/vtk-6.3;/usr/include/x86_64-linux-gnu;/usr/include/jsoncpp;/usr/include/ni")
  if(NOT "https://github.com/ros-perception/perception_pcl/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/ros-perception/perception_pcl/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://ros.org/wiki/perception_pcl " STREQUAL " ")
    set(_report "Check the website 'http://ros.org/wiki/perception_pcl' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Paul Bovbel <paul@bovbel.com>, Bill Morris <bill@neautomation.com>, Kentaro Wada <www.kentaro.wada@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${pcl_ros_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'pcl_ros' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'pcl_ros' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/kal5-1/cargogo/src/perception_pcl/pcl_ros/${idir}'.  ${_report}")
    endif()
    _list_append_unique(pcl_ros_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "pcl_ros_filters;pcl_ros_io;pcl_ros_tf;optimized;/opt/mrtsoftware/release/lib/libpcl_common.so;debug;/opt/mrtsoftware/release/lib/libpcl_common.so;optimized;/opt/mrtsoftware/release/lib/libpcl_octree.so;debug;/opt/mrtsoftware/release/lib/libpcl_octree.so;optimized;/opt/mrtsoftware/release/lib/libpcl_kdtree.so;debug;/opt/mrtsoftware/release/lib/libpcl_kdtree.so;optimized;/opt/mrtsoftware/release/lib/libpcl_search.so;debug;/opt/mrtsoftware/release/lib/libpcl_search.so;optimized;/opt/mrtsoftware/release/lib/libpcl_sample_consensus.so;debug;/opt/mrtsoftware/release/lib/libpcl_sample_consensus.so;optimized;/opt/mrtsoftware/release/lib/libpcl_filters.so;debug;/opt/mrtsoftware/release/lib/libpcl_filters.so;optimized;/opt/mrtsoftware/release/lib/libpcl_features.so;debug;/opt/mrtsoftware/release/lib/libpcl_features.so;optimized;/opt/mrtsoftware/release/lib/libpcl_registration.so;debug;/opt/mrtsoftware/release/lib/libpcl_registration.so;optimized;/opt/mrtsoftware/release/lib/libpcl_io.so;debug;/opt/mrtsoftware/release/lib/libpcl_io.so;optimized;/opt/mrtsoftware/release/lib/libpcl_stereo.so;debug;/opt/mrtsoftware/release/lib/libpcl_stereo.so;optimized;/opt/mrtsoftware/release/lib/libpcl_surface.so;debug;/opt/mrtsoftware/release/lib/libpcl_surface.so;optimized;/opt/mrtsoftware/release/lib/libpcl_visualization.so;debug;/opt/mrtsoftware/release/lib/libpcl_visualization.so;optimized;/opt/mrtsoftware/release/lib/libpcl_tracking.so;debug;/opt/mrtsoftware/release/lib/libpcl_tracking.so;optimized;/opt/mrtsoftware/release/lib/libpcl_gpu_containers.so;debug;/opt/mrtsoftware/release/lib/libpcl_gpu_containers.so;optimized;/opt/mrtsoftware/release/lib/libpcl_gpu_utils.so;debug;/opt/mrtsoftware/release/lib/libpcl_gpu_utils.so;optimized;/opt/mrtsoftware/release/lib/libpcl_gpu_octree.so;debug;/opt/mrtsoftware/release/lib/libpcl_gpu_octree.so;optimized;/opt/mrtsoftware/release/lib/libpcl_gpu_kinfu.so;debug;/opt/mrtsoftware/release/lib/libpcl_gpu_kinfu.so;optimized;/opt/mrtsoftware/release/lib/libpcl_gpu_features.so;debug;/opt/mrtsoftware/release/lib/libpcl_gpu_features.so;optimized;/opt/mrtsoftware/release/lib/libpcl_gpu_segmentation.so;debug;/opt/mrtsoftware/release/lib/libpcl_gpu_segmentation.so;optimized;/opt/mrtsoftware/release/lib/libpcl_keypoints.so;debug;/opt/mrtsoftware/release/lib/libpcl_keypoints.so;optimized;/opt/mrtsoftware/release/lib/libpcl_ml.so;debug;/opt/mrtsoftware/release/lib/libpcl_ml.so;optimized;/opt/mrtsoftware/release/lib/libpcl_segmentation.so;debug;/opt/mrtsoftware/release/lib/libpcl_segmentation.so;optimized;/opt/mrtsoftware/release/lib/libpcl_outofcore.so;debug;/opt/mrtsoftware/release/lib/libpcl_outofcore.so;optimized;/opt/mrtsoftware/release/lib/libpcl_cuda_sample_consensus.so;debug;/opt/mrtsoftware/release/lib/libpcl_cuda_sample_consensus.so;optimized;/opt/mrtsoftware/release/lib/libpcl_cuda_features.so;debug;/opt/mrtsoftware/release/lib/libpcl_cuda_features.so;optimized;/opt/mrtsoftware/release/lib/libpcl_cuda_segmentation.so;debug;/opt/mrtsoftware/release/lib/libpcl_cuda_segmentation.so;optimized;/opt/mrtsoftware/release/lib/libpcl_people.so;debug;/opt/mrtsoftware/release/lib/libpcl_people.so;optimized;/opt/mrtsoftware/release/lib/libpcl_recognition.so;debug;/opt/mrtsoftware/release/lib/libpcl_recognition.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libpthread.so;optimized;/usr/lib/x86_64-linux-gnu/libqhull.so;debug;/usr/lib/x86_64-linux-gnu/libqhull.so;/usr/lib/libOpenNI.so;optimized;/usr/lib/x86_64-linux-gnu/libflann_cpp.so;debug;/usr/lib/x86_64-linux-gnu/libflann_cpp.so;/opt/mrtsoftware/release/lib/libvtkIOEnSight-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonExecutionModel-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonDataModel-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonMath-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtksys-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonMisc-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonSystem-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonTransforms-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingContextOpenGL-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingContext2D-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonColor-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersExtraction-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersGeneral-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkCommonComputationalGeometry-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersStatistics-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingFourier-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkalglib-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersGeometry-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersSources-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingFreeType-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkfreetype-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkzlib-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkftgl-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingOpenGL-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingHybrid-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOImage-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkDICOMParser-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkmetaio-6.3.so.1;/usr/lib/x86_64-linux-gnu/libjpeg.so;/usr/lib/x86_64-linux-gnu/libpng.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libtiff.so;/opt/mrtsoftware/release/lib/libvtkFiltersParallel-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersModeling-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkParallelCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOLegacy-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOExport-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingAnnotation-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingColor-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingGL2PS-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkgl2ps-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingLabel-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersSMP-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersImaging-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingGeneral-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingSources-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingMorphological-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkViewsCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkInteractionWidgets-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersHybrid-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkInteractionStyle-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingVolume-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkproj4-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOLSDyna-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOXML-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOGeometry-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOXMLParser-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkexpat-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkViewsContext2D-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOParallelXML-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkChartsCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkInfovisCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersFlowPaths-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersParallelImaging-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersProgrammable-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOSQL-6.3.so.1;/opt/mrtsoftware/release/lib/libvtksqlite-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingLIC-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingStencil-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOMINC-6.3.so.1;/usr/lib/x86_64-linux-gnu/libnetcdf_c++.so;/usr/lib/x86_64-linux-gnu/libnetcdf.so;/opt/mrtsoftware/release/lib/libvtkhdf5_hl-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkhdf5-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOInfovis-6.3.so.1;/opt/mrtsoftware/release/lib/libvtklibxml2-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOExodus-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkexoIIc-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkInteractionImage-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingMath-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersSelection-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOVideo-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkverdict-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkViewsInfovis-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkInfovisLayout-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersGeneric-6.3.so.1;/usr/lib/x86_64-linux-gnu/libjsoncpp.so;/opt/mrtsoftware/release/lib/libvtkFiltersTexture-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOPLY-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkDomainsChemistry-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOMovie-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkoggtheora-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkViewsGeovis-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkGeovisCore-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOParallel-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIONetCDF-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkImagingStatistics-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingVolumeOpenGL-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOAMR-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersAMR-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersVerdict-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkIOImport-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingLOD-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkFiltersHyperTree-6.3.so.1;/opt/mrtsoftware/release/lib/libvtkRenderingImage-6.3.so.1")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND pcl_ros_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND pcl_ros_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND pcl_ros_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/kal5-1/cargogo/devel_debug/.private/pcl_ros/lib;/home/kal5-1/cargogo/devel_debug/lib;/home/kal5-1/cargogo/devel/lib;/opt/mrtsoftware/local/lib;/opt/mrtsoftware/release/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(pcl_ros_LIBRARY_DIRS ${lib_path})
      list(APPEND pcl_ros_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'pcl_ros'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND pcl_ros_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(pcl_ros_EXPORTED_TARGETS "pcl_ros_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${pcl_ros_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "dynamic_reconfigure;message_filters;nodelet;nodelet_topic_tools;pcl_conversions;pcl_msgs;rosbag;roscpp;sensor_msgs;std_msgs;tf")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 pcl_ros_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${pcl_ros_dep}_FOUND)
      find_package(${pcl_ros_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${pcl_ros_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(pcl_ros_INCLUDE_DIRS ${${pcl_ros_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(pcl_ros_LIBRARIES ${pcl_ros_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${pcl_ros_dep}_LIBRARIES})
  _list_append_deduplicate(pcl_ros_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(pcl_ros_LIBRARIES ${pcl_ros_LIBRARIES})

  _list_append_unique(pcl_ros_LIBRARY_DIRS ${${pcl_ros_dep}_LIBRARY_DIRS})
  list(APPEND pcl_ros_EXPORTED_TARGETS ${${pcl_ros_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${pcl_ros_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
