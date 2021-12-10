# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interbotix_sdk: 1 messages, 4 services")

set(MSG_I_FLAGS "-Iinterbotix_sdk:/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interbotix_sdk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" NAME_WE)
add_custom_target(_interbotix_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_sdk" "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" ""
)

get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" NAME_WE)
add_custom_target(_interbotix_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_sdk" "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" ""
)

get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" NAME_WE)
add_custom_target(_interbotix_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_sdk" "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" ""
)

get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" NAME_WE)
add_custom_target(_interbotix_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_sdk" "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" ""
)

get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" NAME_WE)
add_custom_target(_interbotix_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_sdk" "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
)

### Generating Services
_generate_srv_cpp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_cpp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_cpp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_cpp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
)

### Generating Module File
_generate_module_cpp(interbotix_sdk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interbotix_sdk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interbotix_sdk_generate_messages interbotix_sdk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_cpp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_cpp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_cpp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_cpp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_cpp _interbotix_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_sdk_gencpp)
add_dependencies(interbotix_sdk_gencpp interbotix_sdk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_sdk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
)

### Generating Services
_generate_srv_eus(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_eus(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_eus(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_eus(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
)

### Generating Module File
_generate_module_eus(interbotix_sdk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interbotix_sdk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interbotix_sdk_generate_messages interbotix_sdk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_eus _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_eus _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_eus _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_eus _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_eus _interbotix_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_sdk_geneus)
add_dependencies(interbotix_sdk_geneus interbotix_sdk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_sdk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
)

### Generating Services
_generate_srv_lisp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_lisp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_lisp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_lisp(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
)

### Generating Module File
_generate_module_lisp(interbotix_sdk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interbotix_sdk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interbotix_sdk_generate_messages interbotix_sdk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_lisp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_lisp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_lisp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_lisp _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_lisp _interbotix_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_sdk_genlisp)
add_dependencies(interbotix_sdk_genlisp interbotix_sdk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_sdk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
)

### Generating Services
_generate_srv_nodejs(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_nodejs(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_nodejs(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_nodejs(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
)

### Generating Module File
_generate_module_nodejs(interbotix_sdk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interbotix_sdk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interbotix_sdk_generate_messages interbotix_sdk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_nodejs _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_nodejs _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_nodejs _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_nodejs _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_nodejs _interbotix_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_sdk_gennodejs)
add_dependencies(interbotix_sdk_gennodejs interbotix_sdk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_sdk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
)

### Generating Services
_generate_srv_py(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_py(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_py(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
)
_generate_srv_py(interbotix_sdk
  "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
)

### Generating Module File
_generate_module_py(interbotix_sdk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interbotix_sdk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interbotix_sdk_generate_messages interbotix_sdk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/msg/JointCommands.msg" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_py _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/FirmwareGains.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_py _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_py _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_py _interbotix_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_sdk_generate_messages_py _interbotix_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_sdk_genpy)
add_dependencies(interbotix_sdk_genpy interbotix_sdk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_sdk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_sdk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interbotix_sdk_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_sdk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interbotix_sdk_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_sdk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interbotix_sdk_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_sdk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interbotix_sdk_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_sdk
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interbotix_sdk_generate_messages_py std_msgs_generate_messages_py)
endif()
