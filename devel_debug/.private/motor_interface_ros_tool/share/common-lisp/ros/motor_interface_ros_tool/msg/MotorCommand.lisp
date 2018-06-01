; Auto-generated. Do not edit!


(cl:in-package motor_interface_ros_tool-msg)


;//! \htmlinclude MotorCommand.msg.html

(cl:defclass <MotorCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorCommand (<MotorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_interface_ros_tool-msg:<MotorCommand> is deprecated: use motor_interface_ros_tool-msg:MotorCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_interface_ros_tool-msg:header-val is deprecated.  Use motor_interface_ros_tool-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MotorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_interface_ros_tool-msg:velocity-val is deprecated.  Use motor_interface_ros_tool-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCommand>) ostream)
  "Serializes a message object of type '<MotorCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCommand>) istream)
  "Deserializes a message object of type '<MotorCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCommand>)))
  "Returns string type for a message object of type '<MotorCommand>"
  "motor_interface_ros_tool/MotorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCommand)))
  "Returns string type for a message object of type 'MotorCommand"
  "motor_interface_ros_tool/MotorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCommand>)))
  "Returns md5sum for a message object of type '<MotorCommand>"
  "f829323f183fabb3f889a576f21902c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCommand)))
  "Returns md5sum for a message object of type 'MotorCommand"
  "f829323f183fabb3f889a576f21902c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCommand>)))
  "Returns full string definition for message of type '<MotorCommand>"
  (cl:format cl:nil "Header header~%~%float32 velocity       # the velocity of the car in [m/s]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCommand)))
  "Returns full string definition for message of type 'MotorCommand"
  (cl:format cl:nil "Header header~%~%float32 velocity       # the velocity of the car in [m/s]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCommand
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
))
