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

class CustomAngleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_a_angles = null;
      this.arm_b_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_a_angles')) {
        this.arm_a_angles = initObj.arm_a_angles
      }
      else {
        this.arm_a_angles = [];
      }
      if (initObj.hasOwnProperty('arm_b_angles')) {
        this.arm_b_angles = initObj.arm_b_angles
      }
      else {
        this.arm_b_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomAngleRequest
    // Serialize message field [arm_a_angles]
    bufferOffset = _arraySerializer.float64(obj.arm_a_angles, buffer, bufferOffset, null);
    // Serialize message field [arm_b_angles]
    bufferOffset = _arraySerializer.float64(obj.arm_b_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomAngleRequest
    let len;
    let data = new CustomAngleRequest(null);
    // Deserialize message field [arm_a_angles]
    data.arm_a_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [arm_b_angles]
    data.arm_b_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.arm_a_angles.length;
    length += 8 * object.arm_b_angles.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testing_environment_moveit/CustomAngleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a04862b47749bf3d91cb040c5b55f914';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # angles for arm A
    float64[] arm_a_angles
    
    # angles for arm B
    float64[] arm_b_angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomAngleRequest(null);
    if (msg.arm_a_angles !== undefined) {
      resolved.arm_a_angles = msg.arm_a_angles;
    }
    else {
      resolved.arm_a_angles = []
    }

    if (msg.arm_b_angles !== undefined) {
      resolved.arm_b_angles = msg.arm_b_angles;
    }
    else {
      resolved.arm_b_angles = []
    }

    return resolved;
    }
};

class CustomAngleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomAngleResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomAngleResponse
    let len;
    let data = new CustomAngleResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'testing_environment_moveit/CustomAngleResponse';
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
    const resolved = new CustomAngleResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: CustomAngleRequest,
  Response: CustomAngleResponse,
  md5sum() { return 'a04862b47749bf3d91cb040c5b55f914'; },
  datatype() { return 'testing_environment_moveit/CustomAngle'; }
};
