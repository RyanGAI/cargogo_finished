execute_process(COMMAND "/home/kal5-1/cargogo/build/utils_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kal5-1/cargogo/build/utils_ros/catkin_generated/python_distutils_install.sh) returned error code -1")
endif()