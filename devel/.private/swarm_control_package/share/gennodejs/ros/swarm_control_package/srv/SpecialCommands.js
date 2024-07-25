// Auto-generated. Do not edit!

// (in-package swarm_control_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpecialCommandsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpecialCommandsRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpecialCommandsRequest
    let len;
    let data = new SpecialCommandsRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.command);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm_control_package/SpecialCommandsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cba5e21e920a3a2b7b375cb65b64cdea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpecialCommandsRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

class SpecialCommandsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Response = null;
    }
    else {
      if (initObj.hasOwnProperty('Response')) {
        this.Response = initObj.Response
      }
      else {
        this.Response = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpecialCommandsResponse
    // Serialize message field [Response]
    bufferOffset = _serializer.string(obj.Response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpecialCommandsResponse
    let len;
    let data = new SpecialCommandsResponse(null);
    // Deserialize message field [Response]
    data.Response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Response);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm_control_package/SpecialCommandsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9ca8778f2b24ad03f8213b9fe82be44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Response
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpecialCommandsResponse(null);
    if (msg.Response !== undefined) {
      resolved.Response = msg.Response;
    }
    else {
      resolved.Response = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SpecialCommandsRequest,
  Response: SpecialCommandsResponse,
  md5sum() { return 'a1be574ae7cc4fce751bea7c600387df'; },
  datatype() { return 'swarm_control_package/SpecialCommands'; }
};
