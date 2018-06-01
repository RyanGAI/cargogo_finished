; Auto-generated. Do not edit!


(cl:in-package stargazer_ros_tool-msg)


;//! \htmlinclude LandmarkArray.msg.html

(cl:defclass <LandmarkArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector stargazer_ros_tool-msg:Landmark)
   :initform (cl:make-array 0 :element-type 'stargazer_ros_tool-msg:Landmark :initial-element (cl:make-instance 'stargazer_ros_tool-msg:Landmark))))
)

(cl:defclass LandmarkArray (<LandmarkArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stargazer_ros_tool-msg:<LandmarkArray> is deprecated: use stargazer_ros_tool-msg:LandmarkArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LandmarkArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:header-val is deprecated.  Use stargazer_ros_tool-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <LandmarkArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:landmarks-val is deprecated.  Use stargazer_ros_tool-msg:landmarks instead.")
  (landmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkArray>) ostream)
  "Serializes a message object of type '<LandmarkArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkArray>) istream)
  "Deserializes a message object of type '<LandmarkArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stargazer_ros_tool-msg:Landmark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkArray>)))
  "Returns string type for a message object of type '<LandmarkArray>"
  "stargazer_ros_tool/LandmarkArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkArray)))
  "Returns string type for a message object of type 'LandmarkArray"
  "stargazer_ros_tool/LandmarkArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkArray>)))
  "Returns md5sum for a message object of type '<LandmarkArray>"
  "1f301d284612d34647e102aa11cd2d8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkArray)))
  "Returns md5sum for a message object of type 'LandmarkArray"
  "1f301d284612d34647e102aa11cd2d8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkArray>)))
  "Returns full string definition for message of type '<LandmarkArray>"
  (cl:format cl:nil "Header header~%Landmark[] landmarks~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: stargazer_ros_tool/Landmark~%Header header~%int32 id~%LandmarkPoint[] corner_points~%LandmarkPoint[] id_points~%================================================================================~%MSG: stargazer_ros_tool/LandmarkPoint~%uint8 row~%uint8 col~%~%uint16 u~%uint16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkArray)))
  "Returns full string definition for message of type 'LandmarkArray"
  (cl:format cl:nil "Header header~%Landmark[] landmarks~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: stargazer_ros_tool/Landmark~%Header header~%int32 id~%LandmarkPoint[] corner_points~%LandmarkPoint[] id_points~%================================================================================~%MSG: stargazer_ros_tool/LandmarkPoint~%uint8 row~%uint8 col~%~%uint16 u~%uint16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkArray
    (cl:cons ':header (header msg))
    (cl:cons ':landmarks (landmarks msg))
))
