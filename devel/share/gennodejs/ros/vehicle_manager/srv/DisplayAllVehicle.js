// Auto-generated. Do not edit!

// (in-package vehicle_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Vehicle = require('../msg/Vehicle.js');

//-----------------------------------------------------------

class DisplayAllVehicleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisplayAllVehicleRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisplayAllVehicleRequest
    let len;
    let data = new DisplayAllVehicleRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/DisplayAllVehicleRequest';
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
    const resolved = new DisplayAllVehicleRequest(null);
    return resolved;
    }
};

class DisplayAllVehicleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.vehicles = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('vehicles')) {
        this.vehicles = initObj.vehicles
      }
      else {
        this.vehicles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisplayAllVehicleResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [vehicles]
    // Serialize the length for message field [vehicles]
    bufferOffset = _serializer.uint32(obj.vehicles.length, buffer, bufferOffset);
    obj.vehicles.forEach((val) => {
      bufferOffset = Vehicle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisplayAllVehicleResponse
    let len;
    let data = new DisplayAllVehicleResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vehicles]
    // Deserialize array length for message field [vehicles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicles[i] = Vehicle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.vehicles.forEach((val) => {
      length += Vehicle.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/DisplayAllVehicleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34dc51a34cfcc853d59c1e852e705610';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    Vehicle[] vehicles
    
    ================================================================================
    MSG: vehicle_manager/Vehicle
    string licensePlate
    string make
    string model
    uint32 year
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisplayAllVehicleResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.vehicles !== undefined) {
      resolved.vehicles = new Array(msg.vehicles.length);
      for (let i = 0; i < resolved.vehicles.length; ++i) {
        resolved.vehicles[i] = Vehicle.Resolve(msg.vehicles[i]);
      }
    }
    else {
      resolved.vehicles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DisplayAllVehicleRequest,
  Response: DisplayAllVehicleResponse,
  md5sum() { return '34dc51a34cfcc853d59c1e852e705610'; },
  datatype() { return 'vehicle_manager/DisplayAllVehicle'; }
};
