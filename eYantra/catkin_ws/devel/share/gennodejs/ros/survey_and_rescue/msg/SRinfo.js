// Auto-generated. Do not edit!

// (in-package survey_and_rescue.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SRInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SRInfo
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SRInfo
    let len;
    let data = new SRInfo(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.location.length;
    length += object.info.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'survey_and_rescue/SRInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '086e73c5fbed997f9c9e944f67f1b4d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location
    string info
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SRInfo(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = SRInfo;
