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

class FirmwareGainsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_id = null;
      this.Kp_pos = null;
      this.Ki_pos = null;
      this.Kd_pos = null;
      this.K1 = null;
      this.K2 = null;
      this.Kp_vel = null;
      this.Ki_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_id')) {
        this.joint_id = initObj.joint_id
      }
      else {
        this.joint_id = 0;
      }
      if (initObj.hasOwnProperty('Kp_pos')) {
        this.Kp_pos = initObj.Kp_pos
      }
      else {
        this.Kp_pos = [];
      }
      if (initObj.hasOwnProperty('Ki_pos')) {
        this.Ki_pos = initObj.Ki_pos
      }
      else {
        this.Ki_pos = [];
      }
      if (initObj.hasOwnProperty('Kd_pos')) {
        this.Kd_pos = initObj.Kd_pos
      }
      else {
        this.Kd_pos = [];
      }
      if (initObj.hasOwnProperty('K1')) {
        this.K1 = initObj.K1
      }
      else {
        this.K1 = [];
      }
      if (initObj.hasOwnProperty('K2')) {
        this.K2 = initObj.K2
      }
      else {
        this.K2 = [];
      }
      if (initObj.hasOwnProperty('Kp_vel')) {
        this.Kp_vel = initObj.Kp_vel
      }
      else {
        this.Kp_vel = [];
      }
      if (initObj.hasOwnProperty('Ki_vel')) {
        this.Ki_vel = initObj.Ki_vel
      }
      else {
        this.Ki_vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FirmwareGainsRequest
    // Serialize message field [joint_id]
    bufferOffset = _serializer.int8(obj.joint_id, buffer, bufferOffset);
    // Serialize message field [Kp_pos]
    bufferOffset = _arraySerializer.int32(obj.Kp_pos, buffer, bufferOffset, null);
    // Serialize message field [Ki_pos]
    bufferOffset = _arraySerializer.int32(obj.Ki_pos, buffer, bufferOffset, null);
    // Serialize message field [Kd_pos]
    bufferOffset = _arraySerializer.int32(obj.Kd_pos, buffer, bufferOffset, null);
    // Serialize message field [K1]
    bufferOffset = _arraySerializer.int32(obj.K1, buffer, bufferOffset, null);
    // Serialize message field [K2]
    bufferOffset = _arraySerializer.int32(obj.K2, buffer, bufferOffset, null);
    // Serialize message field [Kp_vel]
    bufferOffset = _arraySerializer.int32(obj.Kp_vel, buffer, bufferOffset, null);
    // Serialize message field [Ki_vel]
    bufferOffset = _arraySerializer.int32(obj.Ki_vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FirmwareGainsRequest
    let len;
    let data = new FirmwareGainsRequest(null);
    // Deserialize message field [joint_id]
    data.joint_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Kp_pos]
    data.Kp_pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Ki_pos]
    data.Ki_pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Kd_pos]
    data.Kd_pos = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [K1]
    data.K1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [K2]
    data.K2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Kp_vel]
    data.Kp_vel = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Ki_vel]
    data.Ki_vel = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.Kp_pos.length;
    length += 4 * object.Ki_pos.length;
    length += 4 * object.Kd_pos.length;
    length += 4 * object.K1.length;
    length += 4 * object.K2.length;
    length += 4 * object.Kp_vel.length;
    length += 4 * object.Ki_vel.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_sdk/FirmwareGainsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a3c17ff4352d3a3bf5d6c64d4bd58a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Send Position PID and/or Velocity PI gains to the firmware
    #
    # To get familiar with the register values, go to...
    # http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
    # ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.
    #
    # Set 'joint_id' to 0 if you want to specify pid gains for each joint separately.
    # Each column in the arrays below will then correspond to a single joint. Note that
    # this is the case even if the joint is controlled by two motors. Thus, the total
    # size of each array will be equivalent to the number of joints in the robot. Also,
    # joints are listed from the 'bottom-up'. For example, the indexes corresponding to
    # the WX200 robot would be [waist, shoulder, elbow, wrist_angle, wrist_rotate, gripper].
    #
    # Set 'joint_id' to 1 or higher to specify pid gains for only that joint. In this
    # case, 'joint_id' corresponds to the motor id specified in the robot-specific 'yaml'
    # file located in the 'config' directory. Additionally, the arrays below will all
    # have a length of 1.
    int8 joint_id
    
    # Each index in the arrays below correspond to a specific joint. Note that if a
    # joint is controlled by two motors, both motors' pid gains will change. Values
    # can range from 0 - 16,383.
    int32[] Kp_pos
    int32[] Ki_pos
    int32[] Kd_pos
    
    # In a similar fashion, the feed-forward velocity gains (K1) and feed-forward acceleration
    # gains (K2) can be specified. The range of values is the same as that for the PID gains.
    
    int32[] K1
    int32[] K2
    
    # Set Velocity PI gains similarly below.
    
    int32[] Kp_vel
    int32[] Ki_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FirmwareGainsRequest(null);
    if (msg.joint_id !== undefined) {
      resolved.joint_id = msg.joint_id;
    }
    else {
      resolved.joint_id = 0
    }

    if (msg.Kp_pos !== undefined) {
      resolved.Kp_pos = msg.Kp_pos;
    }
    else {
      resolved.Kp_pos = []
    }

    if (msg.Ki_pos !== undefined) {
      resolved.Ki_pos = msg.Ki_pos;
    }
    else {
      resolved.Ki_pos = []
    }

    if (msg.Kd_pos !== undefined) {
      resolved.Kd_pos = msg.Kd_pos;
    }
    else {
      resolved.Kd_pos = []
    }

    if (msg.K1 !== undefined) {
      resolved.K1 = msg.K1;
    }
    else {
      resolved.K1 = []
    }

    if (msg.K2 !== undefined) {
      resolved.K2 = msg.K2;
    }
    else {
      resolved.K2 = []
    }

    if (msg.Kp_vel !== undefined) {
      resolved.Kp_vel = msg.Kp_vel;
    }
    else {
      resolved.Kp_vel = []
    }

    if (msg.Ki_vel !== undefined) {
      resolved.Ki_vel = msg.Ki_vel;
    }
    else {
      resolved.Ki_vel = []
    }

    return resolved;
    }
};

class FirmwareGainsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FirmwareGainsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FirmwareGainsResponse
    let len;
    let data = new FirmwareGainsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_sdk/FirmwareGainsResponse';
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
    const resolved = new FirmwareGainsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: FirmwareGainsRequest,
  Response: FirmwareGainsResponse,
  md5sum() { return '1a3c17ff4352d3a3bf5d6c64d4bd58a6'; },
  datatype() { return 'interbotix_sdk/FirmwareGains'; }
};
