// Auto-generated. Do not edit!

// (in-package interbotix_diagnostic_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorTemps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temps = null;
    }
    else {
      if (initObj.hasOwnProperty('temps')) {
        this.temps = initObj.temps
      }
      else {
        this.temps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorTemps
    // Serialize message field [temps]
    bufferOffset = _arraySerializer.int32(obj.temps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorTemps
    let len;
    let data = new MotorTemps(null);
    // Deserialize message field [temps]
    data.temps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.temps.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_diagnostic_tool/MotorTemps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f89afb1d165a8db94d9bf67299f1c7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Publish a vector of joint temperatures [C] for the arm joints
    #
    # The order of the temperatures is the same as the order of the joint names as published in the joint states topic
    int32[] temps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorTemps(null);
    if (msg.temps !== undefined) {
      resolved.temps = msg.temps;
    }
    else {
      resolved.temps = []
    }

    return resolved;
    }
};

module.exports = MotorTemps;
