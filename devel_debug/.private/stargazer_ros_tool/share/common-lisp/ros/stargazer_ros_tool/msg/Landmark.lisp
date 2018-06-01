; Auto-generated. Do not edit!


(cl:in-package stargazer_ros_tool-msg)


;//! \htmlinclude Landmark.msg.html

(cl:defclass <Landmark> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (corner_points
    :reader corner_points
    :initarg :corner_points
    :type (cl:vector stargazer_ros_tool-msg:LandmarkPoint)
   :initform (cl:make-array 0 :element-type 'stargazer_ros_tool-msg:LandmarkPoint :initial-element (cl:make-instance 'stargazer_ros_tool-msg:LandmarkPoint)))
   (id_points
    :reader id_points
    :initarg :id_points
    :type (cl:vector stargazer_ros_tool-msg:LandmarkPoint)
   :initform (cl:make-array 0 :element-type 'stargazer_ros_tool-msg:LandmarkPoint :initial-element (cl:make-instance 'stargazer_ros_tool-msg:LandmarkPoint))))
)

(cl:defclass Landmark (<Landmark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Landmark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Landmark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stargazer_ros_tool-msg:<Landmark> is deprecated: use stargazer_ros_tool-msg:Landmark instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Landmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:header-val is deprecated.  Use stargazer_ros_tool-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Landmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:id-val is deprecated.  Use stargazer_ros_tool-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'corner_points-val :lambda-list '(m))
(cl:defmethod corner_points-val ((m <Landmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:corner_points-val is deprecated.  Use stargazer_ros_tool-msg:corner_points instead.")
  (corner_points m))

(cl:ensure-generic-function 'id_points-val :lambda-list '(m))
(cl:defmethod id_points-val ((m <Landmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:id_points-val is deprecated.  Use stargazer_ros_tool-msg:id_points instead.")
  (id_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Landmark>) ostream)
  "Serializes a message object of type '<Landmark>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corner_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corner_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'id_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Landmark>) istream)
  "Deserializes a message object of type '<Landmark>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corner_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corner_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stargazer_ros_tool-msg:LandmarkPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stargazer_ros_tool-msg:LandmarkPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Landmark>)))
  "Returns string type for a message object of type '<Landmark>"
  "stargazer_ros_tool/Landmark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Landmark)))
  "Returns string type for a message object of type 'Landmark"
  "stargazer_ros_tool/Landmark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Landmark>)))
  "Returns md5sum for a message object of type '<Landmark>"
  "1cd8dba4674c7e54a53fc21b6eccc87c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Landmark)))
  "Returns md5sum for a message object of type 'Landmark"
  "1cd8dba4674c7e54a53fc21b6eccc87c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Landmark>)))
  "Returns full string definition for message of type '<Landmark>"
  (cl:format cl:nil "Header header~%int32 id~%LandmarkPoint[] corner_points~%LandmarkPoint[] id_points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: stargazer_ros_tool/LandmarkPoint~%uint8 row~%uint8 col~%~%uint16 u~%uint16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Landmark)))
  "Returns full string definition for message of type 'Landmark"
  (cl:format cl:nil "Header header~%int32 id~%LandmarkPoint[] corner_points~%LandmarkPoint[] id_points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: stargazer_ros_tool/LandmarkPoint~%uint8 row~%uint8 col~%~%uint16 u~%uint16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Landmark>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corner_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Landmark>))
  "Converts a ROS message object to a list"
  (cl:list 'Landmark
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':corner_points (corner_points msg))
    (cl:cons ':id_points (id_points msg))
))
