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

class pub_correction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.visionCorrectionPosX = null;
      this.visionCorrectionPosY = null;
      this.visionCorrectionPosT = null;
    }
    else {
      if (initObj.hasOwnProperty('visionCorrectionPosX')) {
        this.visionCorrectionPosX = initObj.visionCorrectionPosX
      }
      else {
        this.visionCorrectionPosX = 0;
      }
      if (initObj.hasOwnProperty('visionCorrectionPosY')) {
        this.visionCorrectionPosY = initObj.visionCorrectionPosY
      }
      else {
        this.visionCorrectionPosY = 0;
      }
      if (initObj.hasOwnProperty('visionCorrectionPosT')) {
        this.visionCorrectionPosT = initObj.visionCorrectionPosT
      }
      else {
        this.visionCorrectionPosT = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pub_correction
    // Serialize message field [visionCorrectionPosX]
    bufferOffset = _serializer.int16(obj.visionCorrectionPosX, buffer, bufferOffset);
    // Serialize message field [visionCorrectionPosY]
    bufferOffset = _serializer.int16(obj.visionCorrectionPosY, buffer, bufferOffset);
    // Serialize message field [visionCorrectionPosT]
    bufferOffset = _serializer.int16(obj.visionCorrectionPosT, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pub_correction
    let len;
    let data = new pub_correction(null);
    // Deserialize message field [visionCorrectionPosX]
    data.visionCorrectionPosX = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionCorrectionPosY]
    data.visionCorrectionPosY = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionCorrectionPosT]
    data.visionCorrectionPosT = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision/pub_correction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0454f97ba8e72f3736158200b3f92c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 visionCorrectionPosX
    int16 visionCorrectionPosY
    int16 visionCorrectionPosT
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pub_correction(null);
    if (msg.visionCorrectionPosX !== undefined) {
      resolved.visionCorrectionPosX = msg.visionCorrectionPosX;
    }
    else {
      resolved.visionCorrectionPosX = 0
    }

    if (msg.visionCorrectionPosY !== undefined) {
      resolved.visionCorrectionPosY = msg.visionCorrectionPosY;
    }
    else {
      resolved.visionCorrectionPosY = 0
    }

    if (msg.visionCorrectionPosT !== undefined) {
      resolved.visionCorrectionPosT = msg.visionCorrectionPosT;
    }
    else {
      resolved.visionCorrectionPosT = 0
    }

    return resolved;
    }
};

module.exports = pub_correction;
