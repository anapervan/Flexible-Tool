// Auto-generated. Do not edit!

// (in-package interbotix_joy_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JoyControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waist_cmd = null;
      this.ee_z_cmd = null;
      this.ee_x_cmd = null;
      this.wrist_angle_cmd = null;
      this.wrist_rotate_cmd = null;
      this.gripper_cmd = null;
      this.arm_speed_cmd = null;
      this.arm_toggle_speed_cmd = null;
      this.gripper_pwm_cmd = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('waist_cmd')) {
        this.waist_cmd = initObj.waist_cmd
      }
      else {
        this.waist_cmd = 0;
      }
      if (initObj.hasOwnProperty('ee_z_cmd')) {
        this.ee_z_cmd = initObj.ee_z_cmd
      }
      else {
        this.ee_z_cmd = 0;
      }
      if (initObj.hasOwnProperty('ee_x_cmd')) {
        this.ee_x_cmd = initObj.ee_x_cmd
      }
      else {
        this.ee_x_cmd = 0;
      }
      if (initObj.hasOwnProperty('wrist_angle_cmd')) {
        this.wrist_angle_cmd = initObj.wrist_angle_cmd
      }
      else {
        this.wrist_angle_cmd = 0;
      }
      if (initObj.hasOwnProperty('wrist_rotate_cmd')) {
        this.wrist_rotate_cmd = initObj.wrist_rotate_cmd
      }
      else {
        this.wrist_rotate_cmd = 0;
      }
      if (initObj.hasOwnProperty('gripper_cmd')) {
        this.gripper_cmd = initObj.gripper_cmd
      }
      else {
        this.gripper_cmd = 0;
      }
      if (initObj.hasOwnProperty('arm_speed_cmd')) {
        this.arm_speed_cmd = initObj.arm_speed_cmd
      }
      else {
        this.arm_speed_cmd = 0;
      }
      if (initObj.hasOwnProperty('arm_toggle_speed_cmd')) {
        this.arm_toggle_speed_cmd = initObj.arm_toggle_speed_cmd
      }
      else {
        this.arm_toggle_speed_cmd = 0;
      }
      if (initObj.hasOwnProperty('gripper_pwm_cmd')) {
        this.gripper_pwm_cmd = initObj.gripper_pwm_cmd
      }
      else {
        this.gripper_pwm_cmd = 0;
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoyControl
    // Serialize message field [waist_cmd]
    bufferOffset = _serializer.int8(obj.waist_cmd, buffer, bufferOffset);
    // Serialize message field [ee_z_cmd]
    bufferOffset = _serializer.int8(obj.ee_z_cmd, buffer, bufferOffset);
    // Serialize message field [ee_x_cmd]
    bufferOffset = _serializer.int8(obj.ee_x_cmd, buffer, bufferOffset);
    // Serialize message field [wrist_angle_cmd]
    bufferOffset = _serializer.int8(obj.wrist_angle_cmd, buffer, bufferOffset);
    // Serialize message field [wrist_rotate_cmd]
    bufferOffset = _serializer.int8(obj.wrist_rotate_cmd, buffer, bufferOffset);
    // Serialize message field [gripper_cmd]
    bufferOffset = _serializer.int8(obj.gripper_cmd, buffer, bufferOffset);
    // Serialize message field [arm_speed_cmd]
    bufferOffset = _serializer.int8(obj.arm_speed_cmd, buffer, bufferOffset);
    // Serialize message field [arm_toggle_speed_cmd]
    bufferOffset = _serializer.int8(obj.arm_toggle_speed_cmd, buffer, bufferOffset);
    // Serialize message field [gripper_pwm_cmd]
    bufferOffset = _serializer.int8(obj.gripper_pwm_cmd, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = _serializer.int8(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoyControl
    let len;
    let data = new JoyControl(null);
    // Deserialize message field [waist_cmd]
    data.waist_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ee_z_cmd]
    data.ee_z_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ee_x_cmd]
    data.ee_x_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wrist_angle_cmd]
    data.wrist_angle_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wrist_rotate_cmd]
    data.wrist_rotate_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gripper_cmd]
    data.gripper_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [arm_speed_cmd]
    data.arm_speed_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [arm_toggle_speed_cmd]
    data.arm_toggle_speed_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gripper_pwm_cmd]
    data.gripper_pwm_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_joy_control/JoyControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ec2643e78211f908d62b7a582965053';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Send commands from the joy_node to the modern_robotics_ik node
    
    # enum values that define the joystick controls for the robot
    
    # Control the motion of the waist joint
    int8 WAIST_CCW = 1
    int8 WAIST_CW = 2
    
    # Control the motion of the virtual 'ee_arm_link' or end effector using the modern_robotics_ik engine.
    int8 EE_UP = 3
    int8 EE_DOWN = 4
    int8 EE_FORWARD = 5
    int8 EE_BACKWARD = 6
    
    # Control the motion of the wrist_angle joint
    int8 WRIST_ANGLE_CCW = 7
    int8 WRIST_ANGLE_CW = 8
    
    # Control the motion of the wrist_rotate joint
    int8 WRIST_ROTATE_CCW = 9
    int8 WRIST_ROTATE_CW = 10
    
    # Control the actual gripper
    int8 GRIPPER_OPEN = 11
    int8 GRIPPER_CLOSE = 12
    
    # Control the speed that the robot arm moves
    int8 ARM_LOW_SPEED = 13
    int8 ARM_HIGH_SPEED = 14
    
    # Quickly toggle between a fast and slow speed setting
    int8 ARM_COURSE_SPEED = 15
    int8 ARM_FINE_SPEED = 16
    
    # Control the pwm that the gripper is commanded
    int8 GRIPPER_LOW_PWM = 17
    int8 GRIPPER_HIGH_PWM = 18
    
    # Set robot to specific pose
    int8 HOME_POSE = 19
    int8 SLEEP_POSE = 20
    
    int8 waist_cmd
    int8 ee_z_cmd
    int8 ee_x_cmd
    int8 wrist_angle_cmd
    int8 wrist_rotate_cmd
    int8 gripper_cmd
    int8 arm_speed_cmd
    int8 arm_toggle_speed_cmd
    int8 gripper_pwm_cmd
    int8 robot_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JoyControl(null);
    if (msg.waist_cmd !== undefined) {
      resolved.waist_cmd = msg.waist_cmd;
    }
    else {
      resolved.waist_cmd = 0
    }

    if (msg.ee_z_cmd !== undefined) {
      resolved.ee_z_cmd = msg.ee_z_cmd;
    }
    else {
      resolved.ee_z_cmd = 0
    }

    if (msg.ee_x_cmd !== undefined) {
      resolved.ee_x_cmd = msg.ee_x_cmd;
    }
    else {
      resolved.ee_x_cmd = 0
    }

    if (msg.wrist_angle_cmd !== undefined) {
      resolved.wrist_angle_cmd = msg.wrist_angle_cmd;
    }
    else {
      resolved.wrist_angle_cmd = 0
    }

    if (msg.wrist_rotate_cmd !== undefined) {
      resolved.wrist_rotate_cmd = msg.wrist_rotate_cmd;
    }
    else {
      resolved.wrist_rotate_cmd = 0
    }

    if (msg.gripper_cmd !== undefined) {
      resolved.gripper_cmd = msg.gripper_cmd;
    }
    else {
      resolved.gripper_cmd = 0
    }

    if (msg.arm_speed_cmd !== undefined) {
      resolved.arm_speed_cmd = msg.arm_speed_cmd;
    }
    else {
      resolved.arm_speed_cmd = 0
    }

    if (msg.arm_toggle_speed_cmd !== undefined) {
      resolved.arm_toggle_speed_cmd = msg.arm_toggle_speed_cmd;
    }
    else {
      resolved.arm_toggle_speed_cmd = 0
    }

    if (msg.gripper_pwm_cmd !== undefined) {
      resolved.gripper_pwm_cmd = msg.gripper_pwm_cmd;
    }
    else {
      resolved.gripper_pwm_cmd = 0
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = msg.robot_pose;
    }
    else {
      resolved.robot_pose = 0
    }

    return resolved;
    }
};

// Constants for message
JoyControl.Constants = {
  WAIST_CCW: 1,
  WAIST_CW: 2,
  EE_UP: 3,
  EE_DOWN: 4,
  EE_FORWARD: 5,
  EE_BACKWARD: 6,
  WRIST_ANGLE_CCW: 7,
  WRIST_ANGLE_CW: 8,
  WRIST_ROTATE_CCW: 9,
  WRIST_ROTATE_CW: 10,
  GRIPPER_OPEN: 11,
  GRIPPER_CLOSE: 12,
  ARM_LOW_SPEED: 13,
  ARM_HIGH_SPEED: 14,
  ARM_COURSE_SPEED: 15,
  ARM_FINE_SPEED: 16,
  GRIPPER_LOW_PWM: 17,
  GRIPPER_HIGH_PWM: 18,
  HOME_POSE: 19,
  SLEEP_POSE: 20,
}

module.exports = JoyControl;
