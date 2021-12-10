# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interbotix_diagnostic_tool: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iinterbotix_diagnostic_tool:/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interbotix_diagnostic_tool_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" NAME_WE)
add_custom_target(_interbotix_diagnostic_tool_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_diagnostic_tool" "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interbotix_diagnostic_tool
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_diagnostic_tool
)

### Generating Services

### Generating Module File
_generate_module_cpp(interbotix_diagnostic_tool
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_diagnostic_tool
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interbotix_diagnostic_tool_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interbotix_diagnostic_tool_generate_messages interbotix_diagnostic_tool_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" NAME_WE)
add_dependencies(interbotix_diagnostic_tool_generate_messages_cpp _interbotix_diagnostic_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_diagnostic_tool_gencpp)
add_dependencies(interbotix_diagnostic_tool_gencpp interbotix_diagnostic_tool_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_diagnostic_tool_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(interbotix_diagnostic_tool
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_diagnostic_tool
)

### Generating Services

### Generating Module File
_generate_module_eus(interbotix_diagnostic_tool
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_diagnostic_tool
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interbotix_diagnostic_tool_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interbotix_diagnostic_tool_generate_messages interbotix_diagnostic_tool_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" NAME_WE)
add_dependencies(interbotix_diagnostic_tool_generate_messages_eus _interbotix_diagnostic_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_diagnostic_tool_geneus)
add_dependencies(interbotix_diagnostic_tool_geneus interbotix_diagnostic_tool_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_diagnostic_tool_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interbotix_diagnostic_tool
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_diagnostic_tool
)

### Generating Services

### Generating Module File
_generate_module_lisp(interbotix_diagnostic_tool
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_diagnostic_tool
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interbotix_diagnostic_tool_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interbotix_diagnostic_tool_generate_messages interbotix_diagnostic_tool_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" NAME_WE)
add_dependencies(interbotix_diagnostic_tool_generate_messages_lisp _interbotix_diagnostic_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_diagnostic_tool_genlisp)
add_dependencies(interbotix_diagnostic_tool_genlisp interbotix_diagnostic_tool_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_diagnostic_tool_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(interbotix_diagnostic_tool
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_diagnostic_tool
)

### Generating Services

### Generating Module File
_generate_module_nodejs(interbotix_diagnostic_tool
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_diagnostic_tool
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interbotix_diagnostic_tool_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interbotix_diagnostic_tool_generate_messages interbotix_diagnostic_tool_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" NAME_WE)
add_dependencies(interbotix_diagnostic_tool_generate_messages_nodejs _interbotix_diagnostic_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_diagnostic_tool_gennodejs)
add_dependencies(interbotix_diagnostic_tool_gennodejs interbotix_diagnostic_tool_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_diagnostic_tool_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interbotix_diagnostic_tool
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_diagnostic_tool
)

### Generating Services

### Generating Module File
_generate_module_py(interbotix_diagnostic_tool
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_diagnostic_tool
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interbotix_diagnostic_tool_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interbotix_diagnostic_tool_generate_messages interbotix_diagnostic_tool_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg" NAME_WE)
add_dependencies(interbotix_diagnostic_tool_generate_messages_py _interbotix_diagnostic_tool_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_diagnostic_tool_genpy)
add_dependencies(interbotix_diagnostic_tool_genpy interbotix_diagnostic_tool_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_diagnostic_tool_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_diagnostic_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_diagnostic_tool
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interbotix_diagnostic_tool_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_diagnostic_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_diagnostic_tool
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interbotix_diagnostic_tool_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_diagnostic_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_diagnostic_tool
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interbotix_diagnostic_tool_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_diagnostic_tool)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_diagnostic_tool
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interbotix_diagnostic_tool_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_diagnostic_tool)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_diagnostic_tool\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_diagnostic_tool
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interbotix_diagnostic_tool_generate_messages_py std_msgs_generate_messages_py)
endif()
