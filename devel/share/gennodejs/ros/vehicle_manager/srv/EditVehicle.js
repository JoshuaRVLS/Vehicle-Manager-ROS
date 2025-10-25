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


//-----------------------------------------------------------

class EditVehicleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.property = null;
      this.vehicle_id = null;
      this.new_value = null;
    }
    else {
      if (initObj.hasOwnProperty('property')) {
        this.property = initObj.property
      }
      else {
        this.property = '';
      }
      if (initObj.hasOwnProperty('vehicle_id')) {
        this.vehicle_id = initObj.vehicle_id
      }
      else {
        this.vehicle_id = 0;
      }
      if (initObj.hasOwnProperty('new_value')) {
        this.new_value = initObj.new_value
      }
      else {
        this.new_value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditVehicleRequest
    // Serialize message field [property]
    bufferOffset = _serializer.string(obj.property, buffer, bufferOffset);
    // Serialize message field [vehicle_id]
    bufferOffset = _serializer.uint32(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [new_value]
    bufferOffset = _serializer.string(obj.new_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditVehicleRequest
    let len;
    let data = new EditVehicleRequest(null);
    // Deserialize message field [property]
    data.property = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [new_value]
    data.new_value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.property);
    length += _getByteLength(object.new_value);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vehicle_manager/EditVehicleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ef4be790a0b331cf4ab6036dc81734b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string property
    uint32 vehicle_id 
    string new_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EditVehicleRequest(null);
    if (msg.property !== undefined) {
      resolved.property = msg.property;
    }
    else {
      resolved.property = ''
    }

    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = msg.vehicle_id;
    }
    else {
      resolved.vehicle_id = 0
    }

    if (msg.new_value !== undefined) {
      resolved.new_value = msg.new_value;
    }
    else {
      resolved.new_value = ''
    }

    return resolved;
    }
};

class EditVehicleResponse {
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
    // Serializes a message object of type EditVehicleResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditVehicleResponse
    let len;
    let data = new EditVehicleResponse(null);
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
    return 'vehicle_manager/EditVehicleResponse';
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
    const resolved = new EditVehicleResponse(null);
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
  Request: EditVehicleRequest,
  Response: EditVehicleResponse,
  md5sum() { return 'c1e037ffea88992a21a708541cb21c87'; },
  datatype() { return 'vehicle_manager/EditVehicle'; }
};
