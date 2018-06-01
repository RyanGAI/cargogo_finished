// Auto-generated. Do not edit!

// (in-package traffic_sign_detection_ros_tool.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class jihuoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jihuoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jihuoRequest
    let len;
    let data = new jihuoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'traffic_sign_detection_ros_tool/jihuoRequest';
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
    const resolved = new jihuoRequest(null);
    return resolved;
    }
};

class jihuoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop_sign = null;
      this.arrows = null;
    }
    else {
      if (initObj.hasOwnProperty('stop_sign')) {
        this.stop_sign = initObj.stop_sign
      }
      else {
        this.stop_sign = false;
      }
      if (initObj.hasOwnProperty('arrows')) {
        this.arrows = initObj.arrows
      }
      else {
        this.arrows = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jihuoResponse
    // Serialize message field [stop_sign]
    bufferOffset = _serializer.bool(obj.stop_sign, buffer, bufferOffset);
    // Serialize message field [arrows]
    bufferOffset = _serializer.uint16(obj.arrows, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jihuoResponse
    let len;
    let data = new jihuoResponse(null);
    // Deserialize message field [stop_sign]
    data.stop_sign = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [arrows]
    data.arrows = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'traffic_sign_detection_ros_tool/jihuoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '226ee36d4761e1eb439a49b241f4bd84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool stop_sign
    uint16 arrows
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jihuoResponse(null);
    if (msg.stop_sign !== undefined) {
      resolved.stop_sign = msg.stop_sign;
    }
    else {
      resolved.stop_sign = false
    }

    if (msg.arrows !== undefined) {
      resolved.arrows = msg.arrows;
    }
    else {
      resolved.arrows = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: jihuoRequest,
  Response: jihuoResponse,
  md5sum() { return '226ee36d4761e1eb439a49b241f4bd84'; },
  datatype() { return 'traffic_sign_detection_ros_tool/jihuo'; }
};
