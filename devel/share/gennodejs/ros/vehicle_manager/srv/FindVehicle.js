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

class FindVehicleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.licensePlate = null;
    }
    else {
      if (initObj.hasOwnProperty('licensePlate')) {
        this.licensePlate = initObj.licensePlate
      }
      else {
        this.licensePlate = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindVehicleRequest
    // Serialize message field [licensePlate]
    bufferOffset = _serializer.string(obj.licensePlate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindVehicleRequest
    let len;
    let data = new FindVehicleRequest(null);
    // Deserialize message field [licensePlate]
    data.licensePlate = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.licensePlate);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/FindVehicleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b518cc12125eb37ea279af24b53a577d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string licensePlate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindVehicleRequest(null);
    if (msg.licensePlate !== undefined) {
      resolved.licensePlate = msg.licensePlate;
    }
    else {
      resolved.licensePlate = ''
    }

    return resolved;
    }
};

class FindVehicleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.vehicle = null;
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
      if (initObj.hasOwnProperty('vehicle')) {
        this.vehicle = initObj.vehicle
      }
      else {
        this.vehicle = new Vehicle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindVehicleResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [vehicle]
    bufferOffset = Vehicle.serialize(obj.vehicle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindVehicleResponse
    let len;
    let data = new FindVehicleResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vehicle]
    data.vehicle = Vehicle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += Vehicle.getMessageSize(object.vehicle);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/FindVehicleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4767fa5567382080303c4affeb8eaf62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    Vehicle vehicle
    
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
    const resolved = new FindVehicleResponse(null);
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

    if (msg.vehicle !== undefined) {
      resolved.vehicle = Vehicle.Resolve(msg.vehicle)
    }
    else {
      resolved.vehicle = new Vehicle()
    }

    return resolved;
    }
};

module.exports = {
  Request: FindVehicleRequest,
  Response: FindVehicleResponse,
  md5sum() { return '4a85880fc8ab4e0e9fa8688f0b93aaf9'; },
  datatype() { return 'vehicle_manager/FindVehicle'; }
};
