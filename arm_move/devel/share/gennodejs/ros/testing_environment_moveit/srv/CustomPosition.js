// Auto-generated. Do not edit!

// (in-package testing_environment_moveit.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CustomPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_a_x_pos = null;
      this.arm_a_y_pos = null;
      this.arm_a_z_pos = null;
      this.arm_b_x_pos = null;
      this.arm_b_y_pos = null;
      this.arm_b_z_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_a_x_pos')) {
        this.arm_a_x_pos = initObj.arm_a_x_pos
      }
      else {
        this.arm_a_x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('arm_a_y_pos')) {
        this.arm_a_y_pos = initObj.arm_a_y_pos
      }
      else {
        this.arm_a_y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('arm_a_z_pos')) {
        this.arm_a_z_pos = initObj.arm_a_z_pos
      }
      else {
        this.arm_a_z_pos = 0.0;
      }
      if (initObj.hasOwnProperty('arm_b_x_pos')) {
        this.arm_b_x_pos = initObj.arm_b_x_pos
      }
      else {
        this.arm_b_x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('arm_b_y_pos')) {
        this.arm_b_y_pos = initObj.arm_b_y_pos
      }
      else {
        this.arm_b_y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('arm_b_z_pos')) {
        this.arm_b_z_pos = initObj.arm_b_z_pos
      }
      else {
        this.arm_b_z_pos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomPositionRequest
    // Serialize message field [arm_a_x_pos]
    bufferOffset = _serializer.float64(obj.arm_a_x_pos, buffer, bufferOffset);
    // Serialize message field [arm_a_y_pos]
    bufferOffset = _serializer.float64(obj.arm_a_y_pos, buffer, bufferOffset);
    // Serialize message field [arm_a_z_pos]
    bufferOffset = _serializer.float64(obj.arm_a_z_pos, buffer, bufferOffset);
    // Serialize message field [arm_b_x_pos]
    bufferOffset = _serializer.float64(obj.arm_b_x_pos, buffer, bufferOffset);
    // Serialize message field [arm_b_y_pos]
    bufferOffset = _serializer.float64(obj.arm_b_y_pos, buffer, bufferOffset);
    // Serialize message field [arm_b_z_pos]
    bufferOffset = _serializer.float64(obj.arm_b_z_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomPositionRequest
    let len;
    let data = new CustomPositionRequest(null);
    // Deserialize message field [arm_a_x_pos]
    data.arm_a_x_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arm_a_y_pos]
    data.arm_a_y_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arm_a_z_pos]
    data.arm_a_z_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arm_b_x_pos]
    data.arm_b_x_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arm_b_y_pos]
    data.arm_b_y_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arm_b_z_pos]
    data.arm_b_z_pos = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testing_environment_moveit/CustomPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23304a51cb2971aef33a4c038286d08b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # x,y,z and yaw angle for arm A with respect to origin
    float64 arm_a_x_pos
    float64 arm_a_y_pos
    float64 arm_a_z_pos
    
    # x,y,z and yaw angle for arm B with respect to origin
    float64 arm_b_x_pos
    float64 arm_b_y_pos
    float64 arm_b_z_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomPositionRequest(null);
    if (msg.arm_a_x_pos !== undefined) {
      resolved.arm_a_x_pos = msg.arm_a_x_pos;
    }
    else {
      resolved.arm_a_x_pos = 0.0
    }

    if (msg.arm_a_y_pos !== undefined) {
      resolved.arm_a_y_pos = msg.arm_a_y_pos;
    }
    else {
      resolved.arm_a_y_pos = 0.0
    }

    if (msg.arm_a_z_pos !== undefined) {
      resolved.arm_a_z_pos = msg.arm_a_z_pos;
    }
    else {
      resolved.arm_a_z_pos = 0.0
    }

    if (msg.arm_b_x_pos !== undefined) {
      resolved.arm_b_x_pos = msg.arm_b_x_pos;
    }
    else {
      resolved.arm_b_x_pos = 0.0
    }

    if (msg.arm_b_y_pos !== undefined) {
      resolved.arm_b_y_pos = msg.arm_b_y_pos;
    }
    else {
      resolved.arm_b_y_pos = 0.0
    }

    if (msg.arm_b_z_pos !== undefined) {
      resolved.arm_b_z_pos = msg.arm_b_z_pos;
    }
    else {
      resolved.arm_b_z_pos = 0.0
    }

    return resolved;
    }
};

class CustomPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomPositionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomPositionResponse
    let len;
    let data = new CustomPositionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testing_environment_moveit/CustomPositionResponse';
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
    const resolved = new CustomPositionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: CustomPositionRequest,
  Response: CustomPositionResponse,
  md5sum() { return '23304a51cb2971aef33a4c038286d08b'; },
  datatype() { return 'testing_environment_moveit/CustomPosition'; }
};
