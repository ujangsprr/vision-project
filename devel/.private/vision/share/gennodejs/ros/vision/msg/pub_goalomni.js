// Auto-generated. Do not edit!

// (in-package vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pub_goalomni {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.visionGawangPosX = null;
      this.visionGawangPosY = null;
      this.visionGawangPosT = null;
    }
    else {
      if (initObj.hasOwnProperty('visionGawangPosX')) {
        this.visionGawangPosX = initObj.visionGawangPosX
      }
      else {
        this.visionGawangPosX = 0;
      }
      if (initObj.hasOwnProperty('visionGawangPosY')) {
        this.visionGawangPosY = initObj.visionGawangPosY
      }
      else {
        this.visionGawangPosY = 0;
      }
      if (initObj.hasOwnProperty('visionGawangPosT')) {
        this.visionGawangPosT = initObj.visionGawangPosT
      }
      else {
        this.visionGawangPosT = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pub_goalomni
    // Serialize message field [visionGawangPosX]
    bufferOffset = _serializer.int16(obj.visionGawangPosX, buffer, bufferOffset);
    // Serialize message field [visionGawangPosY]
    bufferOffset = _serializer.int16(obj.visionGawangPosY, buffer, bufferOffset);
    // Serialize message field [visionGawangPosT]
    bufferOffset = _serializer.int16(obj.visionGawangPosT, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pub_goalomni
    let len;
    let data = new pub_goalomni(null);
    // Deserialize message field [visionGawangPosX]
    data.visionGawangPosX = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionGawangPosY]
    data.visionGawangPosY = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionGawangPosT]
    data.visionGawangPosT = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision/pub_goalomni';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '644b097232c29cc53a954f9c2eb28199';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 visionGawangPosX 
    int16 visionGawangPosY
    int16 visionGawangPosT 
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pub_goalomni(null);
    if (msg.visionGawangPosX !== undefined) {
      resolved.visionGawangPosX = msg.visionGawangPosX;
    }
    else {
      resolved.visionGawangPosX = 0
    }

    if (msg.visionGawangPosY !== undefined) {
      resolved.visionGawangPosY = msg.visionGawangPosY;
    }
    else {
      resolved.visionGawangPosY = 0
    }

    if (msg.visionGawangPosT !== undefined) {
      resolved.visionGawangPosT = msg.visionGawangPosT;
    }
    else {
      resolved.visionGawangPosT = 0
    }

    return resolved;
    }
};

module.exports = pub_goalomni;
