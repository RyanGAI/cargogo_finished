# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "stargazer_ros_tool: 3 messages, 0 services")

set(MSG_I_FLAGS "-Istargazer_ros_tool:/home/kal5-1/cargogo/src/stargazer_ros_tool/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(stargazer_ros_tool_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" NAME_WE)
add_custom_target(_stargazer_ros_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stargazer_ros_tool" "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" "std_msgs/Header:stargazer_ros_tool/LandmarkPoint"
)

get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" NAME_WE)
add_custom_target(_stargazer_ros_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stargazer_ros_tool" "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" ""
)

get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" NAME_WE)
add_custom_target(_stargazer_ros_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stargazer_ros_tool" "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" "stargazer_ros_tool/Landmark:std_msgs/Header:stargazer_ros_tool/LandmarkPoint"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_cpp(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_cpp(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg"
  "${MSG_I_FLAGS}"
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stargazer_ros_tool
)

### Generating Services

### Generating Module File
_generate_module_cpp(stargazer_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stargazer_ros_tool
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(stargazer_ros_tool_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(stargazer_ros_tool_generate_messages stargazer_ros_tool_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_cpp _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_cpp _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_cpp _stargazer_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stargazer_ros_tool_gencpp)
add_dependencies(stargazer_ros_tool_gencpp stargazer_ros_tool_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stargazer_ros_tool_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_eus(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_eus(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg"
  "${MSG_I_FLAGS}"
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stargazer_ros_tool
)

### Generating Services

### Generating Module File
_generate_module_eus(stargazer_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stargazer_ros_tool
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(stargazer_ros_tool_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(stargazer_ros_tool_generate_messages stargazer_ros_tool_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_eus _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_eus _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_eus _stargazer_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stargazer_ros_tool_geneus)
add_dependencies(stargazer_ros_tool_geneus stargazer_ros_tool_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stargazer_ros_tool_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_lisp(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_lisp(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg"
  "${MSG_I_FLAGS}"
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stargazer_ros_tool
)

### Generating Services

### Generating Module File
_generate_module_lisp(stargazer_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stargazer_ros_tool
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(stargazer_ros_tool_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(stargazer_ros_tool_generate_messages stargazer_ros_tool_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_lisp _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_lisp _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_lisp _stargazer_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stargazer_ros_tool_genlisp)
add_dependencies(stargazer_ros_tool_genlisp stargazer_ros_tool_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stargazer_ros_tool_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_nodejs(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_nodejs(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg"
  "${MSG_I_FLAGS}"
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stargazer_ros_tool
)

### Generating Services

### Generating Module File
_generate_module_nodejs(stargazer_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stargazer_ros_tool
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(stargazer_ros_tool_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(stargazer_ros_tool_generate_messages stargazer_ros_tool_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_nodejs _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_nodejs _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_nodejs _stargazer_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stargazer_ros_tool_gennodejs)
add_dependencies(stargazer_ros_tool_gennodejs stargazer_ros_tool_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stargazer_ros_tool_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_py(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool
)
_generate_msg_py(stargazer_ros_tool
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg"
  "${MSG_I_FLAGS}"
  "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool
)

### Generating Services

### Generating Module File
_generate_module_py(stargazer_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(stargazer_ros_tool_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(stargazer_ros_tool_generate_messages stargazer_ros_tool_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/Landmark.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_py _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkPoint.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_py _stargazer_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/stargazer_ros_tool/msg/LandmarkArray.msg" NAME_WE)
add_dependencies(stargazer_ros_tool_generate_messages_py _stargazer_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stargazer_ros_tool_genpy)
add_dependencies(stargazer_ros_tool_genpy stargazer_ros_tool_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stargazer_ros_tool_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stargazer_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stargazer_ros_tool
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(stargazer_ros_tool_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stargazer_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stargazer_ros_tool
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(stargazer_ros_tool_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stargazer_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stargazer_ros_tool
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(stargazer_ros_tool_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stargazer_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stargazer_ros_tool
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(stargazer_ros_tool_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool)
  install(CODE "execute_process(COMMAND \"/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stargazer_ros_tool
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(stargazer_ros_tool_generate_messages_py std_msgs_generate_messages_py)
endif()
