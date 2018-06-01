# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from stargazer_ros_tool/Landmark.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import stargazer_ros_tool.msg
import std_msgs.msg

class Landmark(genpy.Message):
  _md5sum = "1cd8dba4674c7e54a53fc21b6eccc87c"
  _type = "stargazer_ros_tool/Landmark"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
int32 id
LandmarkPoint[] corner_points
LandmarkPoint[] id_points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: stargazer_ros_tool/LandmarkPoint
uint8 row
uint8 col

uint16 u
uint16 v
"""
  __slots__ = ['header','id','corner_points','id_points']
  _slot_types = ['std_msgs/Header','int32','stargazer_ros_tool/LandmarkPoint[]','stargazer_ros_tool/LandmarkPoint[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,id,corner_points,id_points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Landmark, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.id is None:
        self.id = 0
      if self.corner_points is None:
        self.corner_points = []
      if self.id_points is None:
        self.id_points = []
    else:
      self.header = std_msgs.msg.Header()
      self.id = 0
      self.corner_points = []
      self.id_points = []

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.id))
      length = len(self.corner_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.corner_points:
        _x = val1
        buff.write(_get_struct_2B2H().pack(_x.row, _x.col, _x.u, _x.v))
      length = len(self.id_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.id_points:
        _x = val1
        buff.write(_get_struct_2B2H().pack(_x.row, _x.col, _x.u, _x.v))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.corner_points is None:
        self.corner_points = None
      if self.id_points is None:
        self.id_points = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.corner_points = []
      for i in range(0, length):
        val1 = stargazer_ros_tool.msg.LandmarkPoint()
        _x = val1
        start = end
        end += 6
        (_x.row, _x.col, _x.u, _x.v,) = _get_struct_2B2H().unpack(str[start:end])
        self.corner_points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.id_points = []
      for i in range(0, length):
        val1 = stargazer_ros_tool.msg.LandmarkPoint()
        _x = val1
        start = end
        end += 6
        (_x.row, _x.col, _x.u, _x.v,) = _get_struct_2B2H().unpack(str[start:end])
        self.id_points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.id))
      length = len(self.corner_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.corner_points:
        _x = val1
        buff.write(_get_struct_2B2H().pack(_x.row, _x.col, _x.u, _x.v))
      length = len(self.id_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.id_points:
        _x = val1
        buff.write(_get_struct_2B2H().pack(_x.row, _x.col, _x.u, _x.v))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.corner_points is None:
        self.corner_points = None
      if self.id_points is None:
        self.id_points = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.corner_points = []
      for i in range(0, length):
        val1 = stargazer_ros_tool.msg.LandmarkPoint()
        _x = val1
        start = end
        end += 6
        (_x.row, _x.col, _x.u, _x.v,) = _get_struct_2B2H().unpack(str[start:end])
        self.corner_points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.id_points = []
      for i in range(0, length):
        val1 = stargazer_ros_tool.msg.LandmarkPoint()
        _x = val1
        start = end
        end += 6
        (_x.row, _x.col, _x.u, _x.v,) = _get_struct_2B2H().unpack(str[start:end])
        self.id_points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_2B2H = None
def _get_struct_2B2H():
    global _struct_2B2H
    if _struct_2B2H is None:
        _struct_2B2H = struct.Struct("<2B2H")
    return _struct_2B2H
