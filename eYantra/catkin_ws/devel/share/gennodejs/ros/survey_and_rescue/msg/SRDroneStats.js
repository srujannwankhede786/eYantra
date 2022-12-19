// Auto-generated. Do not edit!

// (in-package survey_and_rescue.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SRBeaconStats = require('./SRBeaconStats.js');

//-----------------------------------------------------------

class SRDroneStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foodOnboard = null;
      this.medOnboard = null;
      this.foodDistributed = null;
      this.medDistributed = null;
      this.rescues = null;
      this.incorrectDetections = null;
      this.correctDetections = null;
      this.redundantDetections = null;
      this.correctServices = null;
      this.incorrectServices = null;
      this.failedServices = null;
      this.score = null;
      this.currentDetected = null;
      this.totalSucessServiced = null;
      this.currentLit = null;
      this.decisionEvents = null;
    }
    else {
      if (initObj.hasOwnProperty('foodOnboard')) {
        this.foodOnboard = initObj.foodOnboard
      }
      else {
        this.foodOnboard = 0;
      }
      if (initObj.hasOwnProperty('medOnboard')) {
        this.medOnboard = initObj.medOnboard
      }
      else {
        this.medOnboard = 0;
      }
      if (initObj.hasOwnProperty('foodDistributed')) {
        this.foodDistributed = initObj.foodDistributed
      }
      else {
        this.foodDistributed = 0;
      }
      if (initObj.hasOwnProperty('medDistributed')) {
        this.medDistributed = initObj.medDistributed
      }
      else {
        this.medDistributed = 0;
      }
      if (initObj.hasOwnProperty('rescues')) {
        this.rescues = initObj.rescues
      }
      else {
        this.rescues = 0;
      }
      if (initObj.hasOwnProperty('incorrectDetections')) {
        this.incorrectDetections = initObj.incorrectDetections
      }
      else {
        this.incorrectDetections = 0;
      }
      if (initObj.hasOwnProperty('correctDetections')) {
        this.correctDetections = initObj.correctDetections
      }
      else {
        this.correctDetections = 0;
      }
      if (initObj.hasOwnProperty('redundantDetections')) {
        this.redundantDetections = initObj.redundantDetections
      }
      else {
        this.redundantDetections = 0;
      }
      if (initObj.hasOwnProperty('correctServices')) {
        this.correctServices = initObj.correctServices
      }
      else {
        this.correctServices = 0;
      }
      if (initObj.hasOwnProperty('incorrectServices')) {
        this.incorrectServices = initObj.incorrectServices
      }
      else {
        this.incorrectServices = 0;
      }
      if (initObj.hasOwnProperty('failedServices')) {
        this.failedServices = initObj.failedServices
      }
      else {
        this.failedServices = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0;
      }
      if (initObj.hasOwnProperty('currentDetected')) {
        this.currentDetected = initObj.currentDetected
      }
      else {
        this.currentDetected = new SRBeaconStats();
      }
      if (initObj.hasOwnProperty('totalSucessServiced')) {
        this.totalSucessServiced = initObj.totalSucessServiced
      }
      else {
        this.totalSucessServiced = new SRBeaconStats();
      }
      if (initObj.hasOwnProperty('currentLit')) {
        this.currentLit = initObj.currentLit
      }
      else {
        this.currentLit = new SRBeaconStats();
      }
      if (initObj.hasOwnProperty('decisionEvents')) {
        this.decisionEvents = initObj.decisionEvents
      }
      else {
        this.decisionEvents = new SRBeaconStats();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SRDroneStats
    // Serialize message field [foodOnboard]
    bufferOffset = _serializer.uint8(obj.foodOnboard, buffer, bufferOffset);
    // Serialize message field [medOnboard]
    bufferOffset = _serializer.uint8(obj.medOnboard, buffer, bufferOffset);
    // Serialize message field [foodDistributed]
    bufferOffset = _serializer.uint8(obj.foodDistributed, buffer, bufferOffset);
    // Serialize message field [medDistributed]
    bufferOffset = _serializer.uint8(obj.medDistributed, buffer, bufferOffset);
    // Serialize message field [rescues]
    bufferOffset = _serializer.uint8(obj.rescues, buffer, bufferOffset);
    // Serialize message field [incorrectDetections]
    bufferOffset = _serializer.uint8(obj.incorrectDetections, buffer, bufferOffset);
    // Serialize message field [correctDetections]
    bufferOffset = _serializer.uint8(obj.correctDetections, buffer, bufferOffset);
    // Serialize message field [redundantDetections]
    bufferOffset = _serializer.uint8(obj.redundantDetections, buffer, bufferOffset);
    // Serialize message field [correctServices]
    bufferOffset = _serializer.uint8(obj.correctServices, buffer, bufferOffset);
    // Serialize message field [incorrectServices]
    bufferOffset = _serializer.uint8(obj.incorrectServices, buffer, bufferOffset);
    // Serialize message field [failedServices]
    bufferOffset = _serializer.uint8(obj.failedServices, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.int16(obj.score, buffer, bufferOffset);
    // Serialize message field [currentDetected]
    bufferOffset = SRBeaconStats.serialize(obj.currentDetected, buffer, bufferOffset);
    // Serialize message field [totalSucessServiced]
    bufferOffset = SRBeaconStats.serialize(obj.totalSucessServiced, buffer, bufferOffset);
    // Serialize message field [currentLit]
    bufferOffset = SRBeaconStats.serialize(obj.currentLit, buffer, bufferOffset);
    // Serialize message field [decisionEvents]
    bufferOffset = SRBeaconStats.serialize(obj.decisionEvents, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SRDroneStats
    let len;
    let data = new SRDroneStats(null);
    // Deserialize message field [foodOnboard]
    data.foodOnboard = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [medOnboard]
    data.medOnboard = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [foodDistributed]
    data.foodDistributed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [medDistributed]
    data.medDistributed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rescues]
    data.rescues = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [incorrectDetections]
    data.incorrectDetections = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [correctDetections]
    data.correctDetections = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [redundantDetections]
    data.redundantDetections = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [correctServices]
    data.correctServices = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [incorrectServices]
    data.incorrectServices = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [failedServices]
    data.failedServices = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [currentDetected]
    data.currentDetected = SRBeaconStats.deserialize(buffer, bufferOffset);
    // Deserialize message field [totalSucessServiced]
    data.totalSucessServiced = SRBeaconStats.deserialize(buffer, bufferOffset);
    // Deserialize message field [currentLit]
    data.currentLit = SRBeaconStats.deserialize(buffer, bufferOffset);
    // Deserialize message field [decisionEvents]
    data.decisionEvents = SRBeaconStats.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SRBeaconStats.getMessageSize(object.currentDetected);
    length += SRBeaconStats.getMessageSize(object.totalSucessServiced);
    length += SRBeaconStats.getMessageSize(object.currentLit);
    length += SRBeaconStats.getMessageSize(object.decisionEvents);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'survey_and_rescue/SRDroneStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b187ed9321d4be8456a34e0ba5724a84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 foodOnboard
    uint8 medOnboard
    uint8 foodDistributed
    uint8 medDistributed
    uint8 rescues
    uint8 incorrectDetections
    uint8 correctDetections
    uint8 redundantDetections
    uint8 correctServices
    uint8 incorrectServices
    uint8 failedServices
    int16 score
    SRBeaconStats currentDetected
    SRBeaconStats totalSucessServiced
    SRBeaconStats currentLit
    SRBeaconStats decisionEvents
    
    ================================================================================
    MSG: survey_and_rescue/SRBeaconStats
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
    const resolved = new SRDroneStats(null);
    if (msg.foodOnboard !== undefined) {
      resolved.foodOnboard = msg.foodOnboard;
    }
    else {
      resolved.foodOnboard = 0
    }

    if (msg.medOnboard !== undefined) {
      resolved.medOnboard = msg.medOnboard;
    }
    else {
      resolved.medOnboard = 0
    }

    if (msg.foodDistributed !== undefined) {
      resolved.foodDistributed = msg.foodDistributed;
    }
    else {
      resolved.foodDistributed = 0
    }

    if (msg.medDistributed !== undefined) {
      resolved.medDistributed = msg.medDistributed;
    }
    else {
      resolved.medDistributed = 0
    }

    if (msg.rescues !== undefined) {
      resolved.rescues = msg.rescues;
    }
    else {
      resolved.rescues = 0
    }

    if (msg.incorrectDetections !== undefined) {
      resolved.incorrectDetections = msg.incorrectDetections;
    }
    else {
      resolved.incorrectDetections = 0
    }

    if (msg.correctDetections !== undefined) {
      resolved.correctDetections = msg.correctDetections;
    }
    else {
      resolved.correctDetections = 0
    }

    if (msg.redundantDetections !== undefined) {
      resolved.redundantDetections = msg.redundantDetections;
    }
    else {
      resolved.redundantDetections = 0
    }

    if (msg.correctServices !== undefined) {
      resolved.correctServices = msg.correctServices;
    }
    else {
      resolved.correctServices = 0
    }

    if (msg.incorrectServices !== undefined) {
      resolved.incorrectServices = msg.incorrectServices;
    }
    else {
      resolved.incorrectServices = 0
    }

    if (msg.failedServices !== undefined) {
      resolved.failedServices = msg.failedServices;
    }
    else {
      resolved.failedServices = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0
    }

    if (msg.currentDetected !== undefined) {
      resolved.currentDetected = SRBeaconStats.Resolve(msg.currentDetected)
    }
    else {
      resolved.currentDetected = new SRBeaconStats()
    }

    if (msg.totalSucessServiced !== undefined) {
      resolved.totalSucessServiced = SRBeaconStats.Resolve(msg.totalSucessServiced)
    }
    else {
      resolved.totalSucessServiced = new SRBeaconStats()
    }

    if (msg.currentLit !== undefined) {
      resolved.currentLit = SRBeaconStats.Resolve(msg.currentLit)
    }
    else {
      resolved.currentLit = new SRBeaconStats()
    }

    if (msg.decisionEvents !== undefined) {
      resolved.decisionEvents = SRBeaconStats.Resolve(msg.decisionEvents)
    }
    else {
      resolved.decisionEvents = new SRBeaconStats()
    }

    return resolved;
    }
};

module.exports = SRDroneStats;
