// Auto-generated. Do not edit!

// (in-package vehicle_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Vehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.licensePlate = null;
      this.make = null;
      this.model = null;
      this.year = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('licensePlate')) {
        this.licensePlate = initObj.licensePlate
      }
      else {
        this.licensePlate = '';
      }
      if (initObj.hasOwnProperty('make')) {
        this.make = initObj.make
      }
      else {
        this.make = '';
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = '';
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [licensePlate]
    bufferOffset = _serializer.string(obj.licensePlate, buffer, bufferOffset);
    // Serialize message field [make]
    bufferOffset = _serializer.string(obj.make, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = _serializer.string(obj.year, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle
    let len;
    let data = new Vehicle(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [licensePlate]
    data.licensePlate = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [make]
    data.make = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.licensePlate);
    length += _getByteLength(object.make);
    length += _getByteLength(object.model);
    length += _getByteLength(object.year);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_manager/Vehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aeb645e39b7cf2fd517a911deb29ad01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    string licensePlate
    string make
    string model
    string year
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vehicle(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.licensePlate !== undefined) {
      resolved.licensePlate = msg.licensePlate;
    }
    else {
      resolved.licensePlate = ''
    }

    if (msg.make !== undefined) {
      resolved.make = msg.make;
    }
    else {
      resolved.make = ''
    }

    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = ''
    }

    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = ''
    }

    return resolved;
    }
};

module.exports = Vehicle;
