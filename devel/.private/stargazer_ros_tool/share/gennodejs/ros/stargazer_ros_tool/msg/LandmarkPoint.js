// Auto-generated. Do not edit!

// (in-package stargazer_ros_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LandmarkPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.row = null;
      this.col = null;
      this.u = null;
      this.v = null;
    }
    else {
      if (initObj.hasOwnProperty('row')) {
        this.row = initObj.row
      }
      else {
        this.row = 0;
      }
      if (initObj.hasOwnProperty('col')) {
        this.col = initObj.col
      }
      else {
        this.col = 0;
      }
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = 0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandmarkPoint
    // Serialize message field [row]
    bufferOffset = _serializer.uint8(obj.row, buffer, bufferOffset);
    // Serialize message field [col]
    bufferOffset = _serializer.uint8(obj.col, buffer, bufferOffset);
    // Serialize message field [u]
    bufferOffset = _serializer.uint16(obj.u, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.uint16(obj.v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkPoint
    let len;
    let data = new LandmarkPoint(null);
    // Deserialize message field [row]
    data.row = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [col]
    data.col = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [u]
    data.u = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stargazer_ros_tool/LandmarkPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40b0802ec1ab1d1b341c706f76acdd9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 row
    uint8 col
    
    uint16 u
    uint16 v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkPoint(null);
    if (msg.row !== undefined) {
      resolved.row = msg.row;
    }
    else {
      resolved.row = 0
    }

    if (msg.col !== undefined) {
      resolved.col = msg.col;
    }
    else {
      resolved.col = 0
    }

    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = 0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0
    }

    return resolved;
    }
};

module.exports = LandmarkPoint;
