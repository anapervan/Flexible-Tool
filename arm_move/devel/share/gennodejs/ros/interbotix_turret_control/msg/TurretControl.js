// Auto-generated. Do not edit!

// (in-package interbotix_turret_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TurretControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pan_cmd = null;
      this.tilt_cmd = null;
      this.arm_speed_cmd = null;
      this.arm_toggle_speed_cmd = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pan_cmd')) {
        this.pan_cmd = initObj.pan_cmd
      }
      else {
        this.pan_cmd = 0;
      }
      if (initObj.hasOwnProperty('tilt_cmd')) {
        this.tilt_cmd = initObj.tilt_cmd
      }
      else {
        this.tilt_cmd = 0;
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
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurretControl
    // Serialize message field [pan_cmd]
    bufferOffset = _serializer.int8(obj.pan_cmd, buffer, bufferOffset);
    // Serialize message field [tilt_cmd]
    bufferOffset = _serializer.int8(obj.tilt_cmd, buffer, bufferOffset);
    // Serialize message field [arm_speed_cmd]
    bufferOffset = _serializer.int8(obj.arm_speed_cmd, buffer, bufferOffset);
    // Serialize message field [arm_toggle_speed_cmd]
    bufferOffset = _serializer.int8(obj.arm_toggle_speed_cmd, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = _serializer.int8(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurretControl
    let len;
    let data = new TurretControl(null);
    // Deserialize message field [pan_cmd]
    data.pan_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tilt_cmd]
    data.tilt_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [arm_speed_cmd]
    data.arm_speed_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [arm_toggle_speed_cmd]
    data.arm_toggle_speed_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_turret_control/TurretControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e39c9e14721edfb6fd43b3f34f67c7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Send commands from the joy_node to the turret_control node
    
    # enum values that define the joystick controls for the robot
    
    # Control the motion of the pan joint
    int8 PAN_CCW = 1
    int8 PAN_CW = 2
    
    # Control the motion of the tilt joint
    int8 TILT_CCW = 3
    int8 TILT_CW = 4
    
    # Control the speed that the robot arm moves
    int8 ARM_LOW_SPEED = 5
    int8 ARM_HIGH_SPEED = 6
    
    # Quickly toggle between a fast and slow speed setting
    int8 ARM_COURSE_SPEED = 7
    int8 ARM_FINE_SPEED = 8
    
    # Set robot to specific pose
    int8 HOME_POSE = 9
    
    int8 pan_cmd
    int8 tilt_cmd
    int8 arm_speed_cmd
    int8 arm_toggle_speed_cmd
    int8 robot_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurretControl(null);
    if (msg.pan_cmd !== undefined) {
      resolved.pan_cmd = msg.pan_cmd;
    }
    else {
      resolved.pan_cmd = 0
    }

    if (msg.tilt_cmd !== undefined) {
      resolved.tilt_cmd = msg.tilt_cmd;
    }
    else {
      resolved.tilt_cmd = 0
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
TurretControl.Constants = {
  PAN_CCW: 1,
  PAN_CW: 2,
  TILT_CCW: 3,
  TILT_CW: 4,
  ARM_LOW_SPEED: 5,
  ARM_HIGH_SPEED: 6,
  ARM_COURSE_SPEED: 7,
  ARM_FINE_SPEED: 8,
  HOME_POSE: 9,
}

module.exports = TurretControl;
