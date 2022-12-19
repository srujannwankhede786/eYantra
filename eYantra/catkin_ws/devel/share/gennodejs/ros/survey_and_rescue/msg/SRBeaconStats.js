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

class SRBeaconStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FOOD = null;
      this.MEDICINE = null;
      this.RESCUE = null;
    }
    else {
      if (initObj.hasOwnProperty('FOOD')) {
        this.FOOD = initObj.FOOD
      }
      else {
        this.FOOD = [];
      }
      if (initObj.hasOwnProperty('MEDICINE')) {
        this.MEDICINE = initObj.MEDICINE
      }
      else {
        this.MEDICINE = [];
      }
      if (initObj.hasOwnProperty('RESCUE')) {
        this.RESCUE = initObj.RESCUE
      }
      else {
        this.RESCUE = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SRBeaconStats
    // Serialize message field [FOOD]
    bufferOffset = _arraySerializer.uint8(obj.FOOD, buffer, bufferOffset, null);
    // Serialize message field [MEDICINE]
    bufferOffset = _arraySerializer.uint8(obj.MEDICINE, buffer, bufferOffset, null);
    // Serialize message field [RESCUE]
    bufferOffset = _arraySerializer.uint8(obj.RESCUE, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SRBeaconStats
    let len;
    let data = new SRBeaconStats(null);
    // Deserialize message field [FOOD]
    data.FOOD = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [MEDICINE]
    data.MEDICINE = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [RESCUE]
    data.RESCUE = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.FOOD.length;
    length += object.MEDICINE.length;
    length += object.RESCUE.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'survey_and_rescue/SRBeaconStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a79cd048d1c2632f303ccd4ac3fc8908';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] FOOD
    uint8[] MEDICINE
    uint8[] RESCUE
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SRBeaconStats(null);
    if (msg.FOOD !== undefined) {
      resolved.FOOD = msg.FOOD;
    }
    else {
      resolved.FOOD = []
    }

    if (msg.MEDICINE !== undefined) {
      resolved.MEDICINE = msg.MEDICINE;
    }
    else {
      resolved.MEDICINE = []
    }

    if (msg.RESCUE !== undefined) {
      resolved.RESCUE = msg.RESCUE;
    }
    else {
      resolved.RESCUE = []
    }

    return resolved;
    }
};

module.exports = SRBeaconStats;
