// Auto-generated. Do not edit!

// (in-package vehicle_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vehicle = require('../msg/Vehicle.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RegisterVehicleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle')) {
        this.vehicle = initObj.vehicle
      }
      else {
        this.vehicle = new Vehicle();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterVehicleRequest
    // Serialize message field [vehicle]
    bufferOffset = Vehicle.serialize(obj.vehicle, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterVehicleRequest
    let len;
    let data = new RegisterVehicleRequest(null);
    // Deserialize message field [vehicle]
    data.vehicle = Vehicle.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Vehicle.getMessageSize(object.vehicle);
    length += _getByteLength(object.command);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/RegisterVehicleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6aafe4c90b6c629dae901be2eb85a1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Vehicle vehicle 
    string command
    
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
    const resolved = new RegisterVehicleRequest(null);
    if (msg.vehicle !== undefined) {
      resolved.vehicle = Vehicle.Resolve(msg.vehicle)
    }
    else {
      resolved.vehicle = new Vehicle()
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

class RegisterVehicleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterVehicleResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterVehicleResponse
    let len;
    let data = new RegisterVehicleResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/RegisterVehicleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterVehicleResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: RegisterVehicleRequest,
  Response: RegisterVehicleResponse,
  md5sum() { return '1a7db87ef6c91617de5c2158e1a2248c'; },
  datatype() { return 'vehicle_manager/RegisterVehicle'; }
};
