// Auto-generated. Do not edit!

// (in-package longitudinal_control_ros_tool.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class veloserviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activate = null;
      this.velo = null;
    }
    else {
      if (initObj.hasOwnProperty('activate')) {
        this.activate = initObj.activate
      }
      else {
        this.activate = false;
      }
      if (initObj.hasOwnProperty('velo')) {
        this.velo = initObj.velo
      }
      else {
        this.velo = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type veloserviceRequest
    // Serialize message field [activate]
    bufferOffset = _serializer.bool(obj.activate, buffer, bufferOffset);
    // Serialize message field [velo]
    bufferOffset = _serializer.float32(obj.velo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type veloserviceRequest
    let len;
    let data = new veloserviceRequest(null);
    // Deserialize message field [activate]
    data.activate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velo]
    data.velo = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'longitudinal_control_ros_tool/veloserviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50f8ae24fde2172b763492643402bd9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool activate
    float32 velo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new veloserviceRequest(null);
    if (msg.activate !== undefined) {
      resolved.activate = msg.activate;
    }
    else {
      resolved.activate = false
    }

    if (msg.velo !== undefined) {
      resolved.velo = msg.velo;
    }
    else {
      resolved.velo = 0.0
    }

    return resolved;
    }
};

class veloserviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type veloserviceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type veloserviceResponse
    let len;
    let data = new veloserviceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'longitudinal_control_ros_tool/veloserviceResponse';
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
    const resolved = new veloserviceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: veloserviceRequest,
  Response: veloserviceResponse,
  md5sum() { return '50f8ae24fde2172b763492643402bd9d'; },
  datatype() { return 'longitudinal_control_ros_tool/veloservice'; }
};
