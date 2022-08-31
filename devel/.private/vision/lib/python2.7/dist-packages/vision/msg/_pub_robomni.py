# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vision/pub_robomni.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class pub_robomni(genpy.Message):
  _md5sum = "b87a415b121fcf00a877a1ae0c010a4d"
  _type = "vision/pub_robomni"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int16 obst1X 
int16 obst1Y
int16 obst1R
int16 obst1detect 

int16 visionRobotPosX
int16 visionRobotPosY
int16 visionRobotPosT
"""
  __slots__ = ['obst1X','obst1Y','obst1R','obst1detect','visionRobotPosX','visionRobotPosY','visionRobotPosT']
  _slot_types = ['int16','int16','int16','int16','int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       obst1X,obst1Y,obst1R,obst1detect,visionRobotPosX,visionRobotPosY,visionRobotPosT

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(pub_robomni, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.obst1X is None:
        self.obst1X = 0
      if self.obst1Y is None:
        self.obst1Y = 0
      if self.obst1R is None:
        self.obst1R = 0
      if self.obst1detect is None:
        self.obst1detect = 0
      if self.visionRobotPosX is None:
        self.visionRobotPosX = 0
      if self.visionRobotPosY is None:
        self.visionRobotPosY = 0
      if self.visionRobotPosT is None:
        self.visionRobotPosT = 0
    else:
      self.obst1X = 0
      self.obst1Y = 0
      self.obst1R = 0
      self.obst1detect = 0
      self.visionRobotPosX = 0
      self.visionRobotPosY = 0
      self.visionRobotPosT = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_7h().pack(_x.obst1X, _x.obst1Y, _x.obst1R, _x.obst1detect, _x.visionRobotPosX, _x.visionRobotPosY, _x.visionRobotPosT))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 14
      (_x.obst1X, _x.obst1Y, _x.obst1R, _x.obst1detect, _x.visionRobotPosX, _x.visionRobotPosY, _x.visionRobotPosT,) = _get_struct_7h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7h().pack(_x.obst1X, _x.obst1Y, _x.obst1R, _x.obst1detect, _x.visionRobotPosX, _x.visionRobotPosY, _x.visionRobotPosT))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 14
      (_x.obst1X, _x.obst1Y, _x.obst1R, _x.obst1detect, _x.visionRobotPosX, _x.visionRobotPosY, _x.visionRobotPosT,) = _get_struct_7h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7h = None
def _get_struct_7h():
    global _struct_7h
    if _struct_7h is None:
        _struct_7h = struct.Struct("<7h")
    return _struct_7h