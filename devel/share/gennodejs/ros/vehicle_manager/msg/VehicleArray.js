// Auto-generated. Do not edit!

// (in-package vehicle_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vehicle = require('./Vehicle.js');

//-----------------------------------------------------------

class VehicleArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicles = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicles')) {
        this.vehicles = initObj.vehicles
      }
      else {
        this.vehicles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleArray
    // Serialize message field [vehicles]
    // Serialize the length for message field [vehicles]
    bufferOffset = _serializer.uint32(obj.vehicles.length, buffer, bufferOffset);
    obj.vehicles.forEach((val) => {
      bufferOffset = Vehicle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleArray
    let len;
    let data = new VehicleArray(null);
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
    object.vehicles.forEach((val) => {
      length += Vehicle.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_manager/VehicleArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee22c20781e6ace64b3a920182332896';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new VehicleArray(null);
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

module.exports = VehicleArray;
