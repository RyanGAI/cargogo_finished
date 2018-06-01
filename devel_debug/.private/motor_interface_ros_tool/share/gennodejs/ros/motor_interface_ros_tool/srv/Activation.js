// Auto-generated. Do not edit!

// (in-package motor_interface_ros_tool.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ActivationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activate = null;
    }
    else {
      if (initObj.hasOwnProperty('activate')) {
        this.activate = initObj.activate
      }
      else {
        this.activate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActivationRequest
    // Serialize message field [activate]
    bufferOffset = _serializer.bool(obj.activate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActivationRequest
    let len;
    let data = new ActivationRequest(null);
    // Deserialize message field [activate]
    data.activate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'motor_interface_ros_tool/ActivationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b15627a984ebdd591b2ee87ce75c4d06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool activate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActivationRequest(null);
    if (msg.activate !== undefined) {
      resolved.activate = msg.activate;
    }
    else {
      resolved.activate = false
    }

    return resolved;
    }
};

class ActivationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActivationResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActivationResponse
    let len;
    let data = new ActivationResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'motor_interface_ros_tool/ActivationResponse';
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
    const resolved = new ActivationResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ActivationRequest,
  Response: ActivationResponse,
  md5sum() { return 'b15627a984ebdd591b2ee87ce75c4d06'; },
  datatype() { return 'motor_interface_ros_tool/Activation'; }
};
