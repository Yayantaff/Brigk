# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from swarm_control_package/FiducialTransform.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class FiducialTransform(genpy.Message):
  _md5sum = "9f77f4c92fda876d2249ffbc19859044"
  _type = "swarm_control_package/FiducialTransform"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """ # A camera to fiducial transform with supporting data
 int32 fiducial_id
 geometry_msgs/Transform transform
 float64 image_error
 float64 object_error
 float64 fiducial_area

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['fiducial_id','transform','image_error','object_error','fiducial_area']
  _slot_types = ['int32','geometry_msgs/Transform','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       fiducial_id,transform,image_error,object_error,fiducial_area

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FiducialTransform, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.fiducial_id is None:
        self.fiducial_id = 0
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      if self.image_error is None:
        self.image_error = 0.
      if self.object_error is None:
        self.object_error = 0.
      if self.fiducial_area is None:
        self.fiducial_area = 0.
    else:
      self.fiducial_id = 0
      self.transform = geometry_msgs.msg.Transform()
      self.image_error = 0.
      self.object_error = 0.
      self.fiducial_area = 0.

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
      buff.write(_get_struct_i10d().pack(_x.fiducial_id, _x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.image_error, _x.object_error, _x.fiducial_area))
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
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 84
      (_x.fiducial_id, _x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.image_error, _x.object_error, _x.fiducial_area,) = _get_struct_i10d().unpack(str[start:end])
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
      buff.write(_get_struct_i10d().pack(_x.fiducial_id, _x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.image_error, _x.object_error, _x.fiducial_area))
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
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 84
      (_x.fiducial_id, _x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.image_error, _x.object_error, _x.fiducial_area,) = _get_struct_i10d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i10d = None
def _get_struct_i10d():
    global _struct_i10d
    if _struct_i10d is None:
        _struct_i10d = struct.Struct("<i10d")
    return _struct_i10d
