# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motor_interface_ros_tool: 2 messages, 1 services")

set(MSG_I_FLAGS "-Imotor_interface_ros_tool:/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motor_interface_ros_tool_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" NAME_WE)
add_custom_target(_motor_interface_ros_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motor_interface_ros_tool" "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" NAME_WE)
add_custom_target(_motor_interface_ros_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motor_interface_ros_tool" "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" NAME_WE)
add_custom_target(_motor_interface_ros_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motor_interface_ros_tool" "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_interface_ros_tool
)
_generate_msg_cpp(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Services
_generate_srv_cpp(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Module File
_generate_module_cpp(motor_interface_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_interface_ros_tool
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motor_interface_ros_tool_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motor_interface_ros_tool_generate_messages motor_interface_ros_tool_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_cpp _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_cpp _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_cpp _motor_interface_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_interface_ros_tool_gencpp)
add_dependencies(motor_interface_ros_tool_gencpp motor_interface_ros_tool_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_interface_ros_tool_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_interface_ros_tool
)
_generate_msg_eus(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Services
_generate_srv_eus(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Module File
_generate_module_eus(motor_interface_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_interface_ros_tool
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(motor_interface_ros_tool_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(motor_interface_ros_tool_generate_messages motor_interface_ros_tool_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_eus _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_eus _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_eus _motor_interface_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_interface_ros_tool_geneus)
add_dependencies(motor_interface_ros_tool_geneus motor_interface_ros_tool_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_interface_ros_tool_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_interface_ros_tool
)
_generate_msg_lisp(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Services
_generate_srv_lisp(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Module File
_generate_module_lisp(motor_interface_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_interface_ros_tool
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motor_interface_ros_tool_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motor_interface_ros_tool_generate_messages motor_interface_ros_tool_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_lisp _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_lisp _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_lisp _motor_interface_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_interface_ros_tool_genlisp)
add_dependencies(motor_interface_ros_tool_genlisp motor_interface_ros_tool_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_interface_ros_tool_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_interface_ros_tool
)
_generate_msg_nodejs(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Services
_generate_srv_nodejs(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Module File
_generate_module_nodejs(motor_interface_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_interface_ros_tool
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(motor_interface_ros_tool_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(motor_interface_ros_tool_generate_messages motor_interface_ros_tool_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_nodejs _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_nodejs _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_nodejs _motor_interface_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_interface_ros_tool_gennodejs)
add_dependencies(motor_interface_ros_tool_gennodejs motor_interface_ros_tool_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_interface_ros_tool_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool
)
_generate_msg_py(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Services
_generate_srv_py(motor_interface_ros_tool
  "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool
)

### Generating Module File
_generate_module_py(motor_interface_ros_tool
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motor_interface_ros_tool_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motor_interface_ros_tool_generate_messages motor_interface_ros_tool_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/MotorCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_py _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/msg/ServoCommand.msg" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_py _motor_interface_ros_tool_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kal5-1/cargogo/src/motor_interface_ros_tool/srv/Activation.srv" NAME_WE)
add_dependencies(motor_interface_ros_tool_generate_messages_py _motor_interface_ros_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_interface_ros_tool_genpy)
add_dependencies(motor_interface_ros_tool_genpy motor_interface_ros_tool_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_interface_ros_tool_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_interface_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_interface_ros_tool
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(motor_interface_ros_tool_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_interface_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_interface_ros_tool
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(motor_interface_ros_tool_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_interface_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_interface_ros_tool
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(motor_interface_ros_tool_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_interface_ros_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_interface_ros_tool
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(motor_interface_ros_tool_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool)
  install(CODE "execute_process(COMMAND \"/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_interface_ros_tool
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(motor_interface_ros_tool_generate_messages_py std_msgs_generate_messages_py)
endif()
