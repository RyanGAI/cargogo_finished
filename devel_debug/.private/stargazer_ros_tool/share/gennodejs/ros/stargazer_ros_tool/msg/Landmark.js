// Auto-generated. Do not edit!

// (in-package stargazer_ros_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LandmarkPoint = require('./LandmarkPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Landmark {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.corner_points = null;
      this.id_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('corner_points')) {
        this.corner_points = initObj.corner_points
      }
      else {
        this.corner_points = [];
      }
      if (initObj.hasOwnProperty('id_points')) {
        this.id_points = initObj.id_points
      }
      else {
        this.id_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Landmark
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [corner_points]
    // Serialize the length for message field [corner_points]
    bufferOffset = _serializer.uint32(obj.corner_points.length, buffer, bufferOffset);
    obj.corner_points.forEach((val) => {
      bufferOffset = LandmarkPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [id_points]
    // Serialize the length for message field [id_points]
    bufferOffset = _serializer.uint32(obj.id_points.length, buffer, bufferOffset);
    obj.id_points.forEach((val) => {
      bufferOffset = LandmarkPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Landmark
    let len;
    let data = new Landmark(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [corner_points]
    // Deserialize array length for message field [corner_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corner_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corner_points[i] = LandmarkPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [id_points]
    // Deserialize array length for message field [id_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.id_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.id_points[i] = LandmarkPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 6 * object.corner_points.length;
    length += 6 * object.id_points.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stargazer_ros_tool/Landmark';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd8dba4674c7e54a53fc21b6eccc87c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 id
    LandmarkPoint[] corner_points
    LandmarkPoint[] id_points
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: stargazer_ros_tool/LandmarkPoint
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
    const resolved = new Landmark(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.corner_points !== undefined) {
      resolved.corner_points = new Array(msg.corner_points.length);
      for (let i = 0; i < resolved.corner_points.length; ++i) {
        resolved.corner_points[i] = LandmarkPoint.Resolve(msg.corner_points[i]);
      }
    }
    else {
      resolved.corner_points = []
    }

    if (msg.id_points !== undefined) {
      resolved.id_points = new Array(msg.id_points.length);
      for (let i = 0; i < resolved.id_points.length; ++i) {
        resolved.id_points[i] = LandmarkPoint.Resolve(msg.id_points[i]);
      }
    }
    else {
      resolved.id_points = []
    }

    return resolved;
    }
};

module.exports = Landmark;
