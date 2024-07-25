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

class NewTargetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.drone_name = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('drone_name')) {
        this.drone_name = initObj.drone_name
      }
      else {
        this.drone_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewTargetRequest
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [drone_name]
    bufferOffset = _serializer.string(obj.drone_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewTargetRequest
    let len;
    let data = new NewTargetRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [drone_name]
    data.drone_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += _getByteLength(object.drone_name);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm_control_package/NewTargetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '560e5de15c890c77e1dea732564baa04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    string drone_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NewTargetRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.drone_name !== undefined) {
      resolved.drone_name = msg.drone_name;
    }
    else {
      resolved.drone_name = ''
    }

    return resolved;
    }
};

class NewTargetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_string = null;
    }
    else {
      if (initObj.hasOwnProperty('output_string')) {
        this.output_string = initObj.output_string
      }
      else {
        this.output_string = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewTargetResponse
    // Serialize message field [output_string]
    bufferOffset = _serializer.string(obj.output_string, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewTargetResponse
    let len;
    let data = new NewTargetResponse(null);
    // Deserialize message field [output_string]
    data.output_string = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.output_string);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm_control_package/NewTargetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '016361cdee7e84e8c448cca68658d16b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output_string
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NewTargetResponse(null);
    if (msg.output_string !== undefined) {
      resolved.output_string = msg.output_string;
    }
    else {
      resolved.output_string = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: NewTargetRequest,
  Response: NewTargetResponse,
  md5sum() { return 'c474dafb5d56d13eb189af9f6d052132'; },
  datatype() { return 'swarm_control_package/NewTarget'; }
};
