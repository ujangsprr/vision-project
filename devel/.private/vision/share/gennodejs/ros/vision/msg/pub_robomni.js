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

class pub_robomni {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obst1X = null;
      this.obst1Y = null;
      this.obst1R = null;
      this.obst1detect = null;
      this.visionRobotPosX = null;
      this.visionRobotPosY = null;
      this.visionRobotPosT = null;
    }
    else {
      if (initObj.hasOwnProperty('obst1X')) {
        this.obst1X = initObj.obst1X
      }
      else {
        this.obst1X = 0;
      }
      if (initObj.hasOwnProperty('obst1Y')) {
        this.obst1Y = initObj.obst1Y
      }
      else {
        this.obst1Y = 0;
      }
      if (initObj.hasOwnProperty('obst1R')) {
        this.obst1R = initObj.obst1R
      }
      else {
        this.obst1R = 0;
      }
      if (initObj.hasOwnProperty('obst1detect')) {
        this.obst1detect = initObj.obst1detect
      }
      else {
        this.obst1detect = 0;
      }
      if (initObj.hasOwnProperty('visionRobotPosX')) {
        this.visionRobotPosX = initObj.visionRobotPosX
      }
      else {
        this.visionRobotPosX = 0;
      }
      if (initObj.hasOwnProperty('visionRobotPosY')) {
        this.visionRobotPosY = initObj.visionRobotPosY
      }
      else {
        this.visionRobotPosY = 0;
      }
      if (initObj.hasOwnProperty('visionRobotPosT')) {
        this.visionRobotPosT = initObj.visionRobotPosT
      }
      else {
        this.visionRobotPosT = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pub_robomni
    // Serialize message field [obst1X]
    bufferOffset = _serializer.int16(obj.obst1X, buffer, bufferOffset);
    // Serialize message field [obst1Y]
    bufferOffset = _serializer.int16(obj.obst1Y, buffer, bufferOffset);
    // Serialize message field [obst1R]
    bufferOffset = _serializer.int16(obj.obst1R, buffer, bufferOffset);
    // Serialize message field [obst1detect]
    bufferOffset = _serializer.int16(obj.obst1detect, buffer, bufferOffset);
    // Serialize message field [visionRobotPosX]
    bufferOffset = _serializer.int16(obj.visionRobotPosX, buffer, bufferOffset);
    // Serialize message field [visionRobotPosY]
    bufferOffset = _serializer.int16(obj.visionRobotPosY, buffer, bufferOffset);
    // Serialize message field [visionRobotPosT]
    bufferOffset = _serializer.int16(obj.visionRobotPosT, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pub_robomni
    let len;
    let data = new pub_robomni(null);
    // Deserialize message field [obst1X]
    data.obst1X = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [obst1Y]
    data.obst1Y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [obst1R]
    data.obst1R = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [obst1detect]
    data.obst1detect = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionRobotPosX]
    data.visionRobotPosX = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionRobotPosY]
    data.visionRobotPosY = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [visionRobotPosT]
    data.visionRobotPosT = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision/pub_robomni';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b87a415b121fcf00a877a1ae0c010a4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 obst1X 
    int16 obst1Y
    int16 obst1R
    int16 obst1detect 
    
    int16 visionRobotPosX
    int16 visionRobotPosY
    int16 visionRobotPosT
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pub_robomni(null);
    if (msg.obst1X !== undefined) {
      resolved.obst1X = msg.obst1X;
    }
    else {
      resolved.obst1X = 0
    }

    if (msg.obst1Y !== undefined) {
      resolved.obst1Y = msg.obst1Y;
    }
    else {
      resolved.obst1Y = 0
    }

    if (msg.obst1R !== undefined) {
      resolved.obst1R = msg.obst1R;
    }
    else {
      resolved.obst1R = 0
    }

    if (msg.obst1detect !== undefined) {
      resolved.obst1detect = msg.obst1detect;
    }
    else {
      resolved.obst1detect = 0
    }

    if (msg.visionRobotPosX !== undefined) {
      resolved.visionRobotPosX = msg.visionRobotPosX;
    }
    else {
      resolved.visionRobotPosX = 0
    }

    if (msg.visionRobotPosY !== undefined) {
      resolved.visionRobotPosY = msg.visionRobotPosY;
    }
    else {
      resolved.visionRobotPosY = 0
    }

    if (msg.visionRobotPosT !== undefined) {
      resolved.visionRobotPosT = msg.visionRobotPosT;
    }
    else {
      resolved.visionRobotPosT = 0
    }

    return resolved;
    }
};

module.exports = pub_robomni;
