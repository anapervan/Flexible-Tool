# Install script for directory: /home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_diagnostic_tool/msg" TYPE FILE FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/msg/MotorTemps.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_diagnostic_tool/cmake" TYPE FILE FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/build/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/catkin_generated/installspace/interbotix_diagnostic_tool-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/devel/include/interbotix_diagnostic_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/devel/share/roseus/ros/interbotix_diagnostic_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/devel/share/common-lisp/ros/interbotix_diagnostic_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/devel/share/gennodejs/ros/interbotix_diagnostic_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/devel/lib/python3/dist-packages/interbotix_diagnostic_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/devel/lib/python3/dist-packages/interbotix_diagnostic_tool")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/build/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/catkin_generated/installspace/interbotix_diagnostic_tool.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_diagnostic_tool/cmake" TYPE FILE FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/build/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/catkin_generated/installspace/interbotix_diagnostic_tool-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_diagnostic_tool/cmake" TYPE FILE FILES
    "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/build/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/catkin_generated/installspace/interbotix_diagnostic_toolConfig.cmake"
    "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/build/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/catkin_generated/installspace/interbotix_diagnostic_toolConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_diagnostic_tool" TYPE FILE FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/interbotix_diagnostic_tool" TYPE PROGRAM FILES "/home/bowen/Documents/Rod_manipulation/Flexible-Tool/arm_move/src/interbotix_ros_arms/interbotix_examples/interbotix_diagnostic_tool/scripts/bag2csv.py")
endif()

