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

class RobotInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoRequest
    let len;
    let data = new RobotInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_sdk/RobotInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get robot information
    #
    # Note that all data that is returned in a vector is organized such that each index
    # corresponds to the joint at the same index as it appears in the joint_states topic.
    # Gripper info is NOT included in the vectors.
    #
    # Multiple types of robot information are provided, including:
    #   1) joint_names - the names of all joints in the robot
    #   2) joint_ids - the Dynamixel IDs for all joints in the robot
    #   3) lower_joint_limits - the lower joint limits in radians (taken from URDF)
    #   4) upper_joint_limits - the upper joint limits in radians (taken from URDF)
    #   5) velocity_limits - the velocity limits in rad/s (taken from URDF)
    #   6) lower_gripper_limit - the lower gripper limit in radians (taken from URDF)
    #   7) upper_gripper_limit - the upper gripper limit in radians (taken from URDF)
    #   8) use_gripper - True if the driver node can control the gripper - otherwise, False
    #   9) home_pos - home position for each robot; essentially commands all joints
    #                 (excluding gripper) to 0 radians (taken from arm_poses.h)
    #   10) sleep_pos - sleep position for each robot; essentially commands all joints
    #                   (excluding gripper) to a specific position in radians so that
    #                   if the driver node is shutdown (which torques off all motors),
    #                   the arm doesn't come crashing down (taken from arm_poses.h)
    #   11) num_joints - the number of joints in the arm (excluding gripper)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoRequest(null);
    return resolved;
    }
};

class RobotInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.joint_ids = null;
      this.lower_joint_limits = null;
      this.upper_joint_limits = null;
      this.velocity_limits = null;
      this.lower_gripper_limit = null;
      this.upper_gripper_limit = null;
      this.use_gripper = null;
      this.home_pos = null;
      this.sleep_pos = null;
      this.num_joints = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('joint_ids')) {
        this.joint_ids = initObj.joint_ids
      }
      else {
        this.joint_ids = [];
      }
      if (initObj.hasOwnProperty('lower_joint_limits')) {
        this.lower_joint_limits = initObj.lower_joint_limits
      }
      else {
        this.lower_joint_limits = [];
      }
      if (initObj.hasOwnProperty('upper_joint_limits')) {
        this.upper_joint_limits = initObj.upper_joint_limits
      }
      else {
        this.upper_joint_limits = [];
      }
      if (initObj.hasOwnProperty('velocity_limits')) {
        this.velocity_limits = initObj.velocity_limits
      }
      else {
        this.velocity_limits = [];
      }
      if (initObj.hasOwnProperty('lower_gripper_limit')) {
        this.lower_gripper_limit = initObj.lower_gripper_limit
      }
      else {
        this.lower_gripper_limit = 0.0;
      }
      if (initObj.hasOwnProperty('upper_gripper_limit')) {
        this.upper_gripper_limit = initObj.upper_gripper_limit
      }
      else {
        this.upper_gripper_limit = 0.0;
      }
      if (initObj.hasOwnProperty('use_gripper')) {
        this.use_gripper = initObj.use_gripper
      }
      else {
        this.use_gripper = false;
      }
      if (initObj.hasOwnProperty('home_pos')) {
        this.home_pos = initObj.home_pos
      }
      else {
        this.home_pos = [];
      }
      if (initObj.hasOwnProperty('sleep_pos')) {
        this.sleep_pos = initObj.sleep_pos
      }
      else {
        this.sleep_pos = [];
      }
      if (initObj.hasOwnProperty('num_joints')) {
        this.num_joints = initObj.num_joints
      }
      else {
        this.num_joints = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoResponse
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [joint_ids]
    bufferOffset = _arraySerializer.uint8(obj.joint_ids, buffer, bufferOffset, null);
    // Serialize message field [lower_joint_limits]
    bufferOffset = _arraySerializer.float64(obj.lower_joint_limits, buffer, bufferOffset, null);
    // Serialize message field [upper_joint_limits]
    bufferOffset = _arraySerializer.float64(obj.upper_joint_limits, buffer, bufferOffset, null);
    // Serialize message field [velocity_limits]
    bufferOffset = _arraySerializer.float64(obj.velocity_limits, buffer, bufferOffset, null);
    // Serialize message field [lower_gripper_limit]
    bufferOffset = _serializer.float64(obj.lower_gripper_limit, buffer, bufferOffset);
    // Serialize message field [upper_gripper_limit]
    bufferOffset = _serializer.float64(obj.upper_gripper_limit, buffer, bufferOffset);
    // Serialize message field [use_gripper]
    bufferOffset = _serializer.bool(obj.use_gripper, buffer, bufferOffset);
    // Serialize message field [home_pos]
    bufferOffset = _arraySerializer.float64(obj.home_pos, buffer, bufferOffset, null);
    // Serialize message field [sleep_pos]
    bufferOffset = _arraySerializer.float64(obj.sleep_pos, buffer, bufferOffset, null);
    // Serialize message field [num_joints]
    bufferOffset = _serializer.int8(obj.num_joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoResponse
    let len;
    let data = new RobotInfoResponse(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [joint_ids]
    data.joint_ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lower_joint_limits]
    data.lower_joint_limits = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [upper_joint_limits]
    data.upper_joint_limits = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_limits]
    data.velocity_limits = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lower_gripper_limit]
    data.lower_gripper_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upper_gripper_limit]
    data.upper_gripper_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [use_gripper]
    data.use_gripper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [home_pos]
    data.home_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sleep_pos]
    data.sleep_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [num_joints]
    data.num_joints = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.joint_ids.length;
    length += 8 * object.lower_joint_limits.length;
    length += 8 * object.upper_joint_limits.length;
    length += 8 * object.velocity_limits.length;
    length += 8 * object.home_pos.length;
    length += 8 * object.sleep_pos.length;
    return length + 46;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_sdk/RobotInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70459aca45ba9968340a3675aa77a130';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # joint names appear in the same order as they do in the joint_states.name vector
    string[] joint_names
    uint8[] joint_ids
    float64[] lower_joint_limits
    float64[] upper_joint_limits
    float64[] velocity_limits
    float64 lower_gripper_limit
    float64 upper_gripper_limit
    bool use_gripper
    float64[] home_pos
    float64[] sleep_pos
    int8 num_joints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoResponse(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.joint_ids !== undefined) {
      resolved.joint_ids = msg.joint_ids;
    }
    else {
      resolved.joint_ids = []
    }

    if (msg.lower_joint_limits !== undefined) {
      resolved.lower_joint_limits = msg.lower_joint_limits;
    }
    else {
      resolved.lower_joint_limits = []
    }

    if (msg.upper_joint_limits !== undefined) {
      resolved.upper_joint_limits = msg.upper_joint_limits;
    }
    else {
      resolved.upper_joint_limits = []
    }

    if (msg.velocity_limits !== undefined) {
      resolved.velocity_limits = msg.velocity_limits;
    }
    else {
      resolved.velocity_limits = []
    }

    if (msg.lower_gripper_limit !== undefined) {
      resolved.lower_gripper_limit = msg.lower_gripper_limit;
    }
    else {
      resolved.lower_gripper_limit = 0.0
    }

    if (msg.upper_gripper_limit !== undefined) {
      resolved.upper_gripper_limit = msg.upper_gripper_limit;
    }
    else {
      resolved.upper_gripper_limit = 0.0
    }

    if (msg.use_gripper !== undefined) {
      resolved.use_gripper = msg.use_gripper;
    }
    else {
      resolved.use_gripper = false
    }

    if (msg.home_pos !== undefined) {
      resolved.home_pos = msg.home_pos;
    }
    else {
      resolved.home_pos = []
    }

    if (msg.sleep_pos !== undefined) {
      resolved.sleep_pos = msg.sleep_pos;
    }
    else {
      resolved.sleep_pos = []
    }

    if (msg.num_joints !== undefined) {
      resolved.num_joints = msg.num_joints;
    }
    else {
      resolved.num_joints = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotInfoRequest,
  Response: RobotInfoResponse,
  md5sum() { return '70459aca45ba9968340a3675aa77a130'; },
  datatype() { return 'interbotix_sdk/RobotInfo'; }
};
