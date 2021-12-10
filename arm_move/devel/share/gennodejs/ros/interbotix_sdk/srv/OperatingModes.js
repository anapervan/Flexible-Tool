// Auto-generated. Do not edit!

// (in-package interbotix_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class OperatingModesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_mode = null;
      this.use_custom_arm_profiles = null;
      this.arm_profile_velocity = null;
      this.arm_profile_acceleration = null;
      this.gripper_mode = null;
      this.use_custom_gripper_profiles = null;
      this.gripper_profile_velocity = null;
      this.gripper_profile_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_mode')) {
        this.arm_mode = initObj.arm_mode
      }
      else {
        this.arm_mode = '';
      }
      if (initObj.hasOwnProperty('use_custom_arm_profiles')) {
        this.use_custom_arm_profiles = initObj.use_custom_arm_profiles
      }
      else {
        this.use_custom_arm_profiles = false;
      }
      if (initObj.hasOwnProperty('arm_profile_velocity')) {
        this.arm_profile_velocity = initObj.arm_profile_velocity
      }
      else {
        this.arm_profile_velocity = 0;
      }
      if (initObj.hasOwnProperty('arm_profile_acceleration')) {
        this.arm_profile_acceleration = initObj.arm_profile_acceleration
      }
      else {
        this.arm_profile_acceleration = 0;
      }
      if (initObj.hasOwnProperty('gripper_mode')) {
        this.gripper_mode = initObj.gripper_mode
      }
      else {
        this.gripper_mode = '';
      }
      if (initObj.hasOwnProperty('use_custom_gripper_profiles')) {
        this.use_custom_gripper_profiles = initObj.use_custom_gripper_profiles
      }
      else {
        this.use_custom_gripper_profiles = false;
      }
      if (initObj.hasOwnProperty('gripper_profile_velocity')) {
        this.gripper_profile_velocity = initObj.gripper_profile_velocity
      }
      else {
        this.gripper_profile_velocity = 0;
      }
      if (initObj.hasOwnProperty('gripper_profile_acceleration')) {
        this.gripper_profile_acceleration = initObj.gripper_profile_acceleration
      }
      else {
        this.gripper_profile_acceleration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperatingModesRequest
    // Serialize message field [arm_mode]
    bufferOffset = _serializer.string(obj.arm_mode, buffer, bufferOffset);
    // Serialize message field [use_custom_arm_profiles]
    bufferOffset = _serializer.bool(obj.use_custom_arm_profiles, buffer, bufferOffset);
    // Serialize message field [arm_profile_velocity]
    bufferOffset = _serializer.int32(obj.arm_profile_velocity, buffer, bufferOffset);
    // Serialize message field [arm_profile_acceleration]
    bufferOffset = _serializer.int32(obj.arm_profile_acceleration, buffer, bufferOffset);
    // Serialize message field [gripper_mode]
    bufferOffset = _serializer.string(obj.gripper_mode, buffer, bufferOffset);
    // Serialize message field [use_custom_gripper_profiles]
    bufferOffset = _serializer.bool(obj.use_custom_gripper_profiles, buffer, bufferOffset);
    // Serialize message field [gripper_profile_velocity]
    bufferOffset = _serializer.int32(obj.gripper_profile_velocity, buffer, bufferOffset);
    // Serialize message field [gripper_profile_acceleration]
    bufferOffset = _serializer.int32(obj.gripper_profile_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatingModesRequest
    let len;
    let data = new OperatingModesRequest(null);
    // Deserialize message field [arm_mode]
    data.arm_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [use_custom_arm_profiles]
    data.use_custom_arm_profiles = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [arm_profile_velocity]
    data.arm_profile_velocity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arm_profile_acceleration]
    data.arm_profile_acceleration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gripper_mode]
    data.gripper_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [use_custom_gripper_profiles]
    data.use_custom_gripper_profiles = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gripper_profile_velocity]
    data.gripper_profile_velocity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gripper_profile_acceleration]
    data.gripper_profile_acceleration = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.arm_mode);
    length += _getByteLength(object.gripper_mode);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_sdk/OperatingModesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f6f1b135f03cc8740935c2565835f76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set the operating modes for the arm and/or gripper
    #
    # There are 5 valid operating modes for the arm. They are...
    #   "none" - arm motors will not respond to any joint command
    #   "position" - arm motors will expect only position commands
    #   "velocity" - arm motors will expect only velocity commands
    #   "current" - arm motors will expect only current commands
    #   "pwm" - arm motors will expect only pwm commands
    #
    # The gripper can also be set to "ext_position". This allows the gripper to do
    # multiple rotations instead of just one. It should only be used if you are using
    # a custom gripper capable of doing more than one rotation.
    #
    # For "position" control, profile_velocity sets the max speed of each joint while
    # profile_acceleration sets the max acceleration. Please reference the motor datasheet
    # (just click a motor at http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/)
    # for conversion factors. Values can be between 0 and 32,767. If setting custom profiles,
    # make sure to set 'use_custom_x_profiles' to true.
    #
    # For "velocity" control, only profile_acceleration is used.
    #
    # The velocity and acceleration profiles are not used in the "current" and "pwm" modes.
    #
    # Note that if the arm or gripper mode options are not set, the service will ignore
    # them. This is useful if you only want to change one operating mode and not the other.
    
    string arm_mode
    bool use_custom_arm_profiles
    int32 arm_profile_velocity
    int32 arm_profile_acceleration
    
    string gripper_mode
    bool use_custom_gripper_profiles
    int32 gripper_profile_velocity
    int32 gripper_profile_acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatingModesRequest(null);
    if (msg.arm_mode !== undefined) {
      resolved.arm_mode = msg.arm_mode;
    }
    else {
      resolved.arm_mode = ''
    }

    if (msg.use_custom_arm_profiles !== undefined) {
      resolved.use_custom_arm_profiles = msg.use_custom_arm_profiles;
    }
    else {
      resolved.use_custom_arm_profiles = false
    }

    if (msg.arm_profile_velocity !== undefined) {
      resolved.arm_profile_velocity = msg.arm_profile_velocity;
    }
    else {
      resolved.arm_profile_velocity = 0
    }

    if (msg.arm_profile_acceleration !== undefined) {
      resolved.arm_profile_acceleration = msg.arm_profile_acceleration;
    }
    else {
      resolved.arm_profile_acceleration = 0
    }

    if (msg.gripper_mode !== undefined) {
      resolved.gripper_mode = msg.gripper_mode;
    }
    else {
      resolved.gripper_mode = ''
    }

    if (msg.use_custom_gripper_profiles !== undefined) {
      resolved.use_custom_gripper_profiles = msg.use_custom_gripper_profiles;
    }
    else {
      resolved.use_custom_gripper_profiles = false
    }

    if (msg.gripper_profile_velocity !== undefined) {
      resolved.gripper_profile_velocity = msg.gripper_profile_velocity;
    }
    else {
      resolved.gripper_profile_velocity = 0
    }

    if (msg.gripper_profile_acceleration !== undefined) {
      resolved.gripper_profile_acceleration = msg.gripper_profile_acceleration;
    }
    else {
      resolved.gripper_profile_acceleration = 0
    }

    return resolved;
    }
};

class OperatingModesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperatingModesResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatingModesResponse
    let len;
    let data = new OperatingModesResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_sdk/OperatingModesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatingModesResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OperatingModesRequest,
  Response: OperatingModesResponse,
  md5sum() { return '7f6f1b135f03cc8740935c2565835f76'; },
  datatype() { return 'interbotix_sdk/OperatingModes'; }
};
