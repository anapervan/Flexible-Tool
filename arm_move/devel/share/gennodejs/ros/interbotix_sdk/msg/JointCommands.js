// Auto-generated. Do not edit!

// (in-package interbotix_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointCommands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommands
    // Serialize message field [cmd]
    bufferOffset = _arraySerializer.float64(obj.cmd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommands
    let len;
    let data = new JointCommands(null);
    // Deserialize message field [cmd]
    data.cmd = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.cmd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_sdk/JointCommands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '306931a8f4b928ea86b21d23c7e4f90e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Send a vector of position, velocity, current, or pwm commands to the robot arm joints
    #
    # The order of the joints is the same as the order of the joint names as published in the joint states topic
    
    float64[] cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommands(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = []
    }

    return resolved;
    }
};

module.exports = JointCommands;
