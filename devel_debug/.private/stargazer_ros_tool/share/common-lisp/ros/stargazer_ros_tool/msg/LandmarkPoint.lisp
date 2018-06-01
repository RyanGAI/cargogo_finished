; Auto-generated. Do not edit!


(cl:in-package stargazer_ros_tool-msg)


;//! \htmlinclude LandmarkPoint.msg.html

(cl:defclass <LandmarkPoint> (roslisp-msg-protocol:ros-message)
  ((row
    :reader row
    :initarg :row
    :type cl:fixnum
    :initform 0)
   (col
    :reader col
    :initarg :col
    :type cl:fixnum
    :initform 0)
   (u
    :reader u
    :initarg :u
    :type cl:fixnum
    :initform 0)
   (v
    :reader v
    :initarg :v
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LandmarkPoint (<LandmarkPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stargazer_ros_tool-msg:<LandmarkPoint> is deprecated: use stargazer_ros_tool-msg:LandmarkPoint instead.")))

(cl:ensure-generic-function 'row-val :lambda-list '(m))
(cl:defmethod row-val ((m <LandmarkPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:row-val is deprecated.  Use stargazer_ros_tool-msg:row instead.")
  (row m))

(cl:ensure-generic-function 'col-val :lambda-list '(m))
(cl:defmethod col-val ((m <LandmarkPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:col-val is deprecated.  Use stargazer_ros_tool-msg:col instead.")
  (col m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <LandmarkPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:u-val is deprecated.  Use stargazer_ros_tool-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <LandmarkPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stargazer_ros_tool-msg:v-val is deprecated.  Use stargazer_ros_tool-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkPoint>) ostream)
  "Serializes a message object of type '<LandmarkPoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkPoint>) istream)
  "Deserializes a message object of type '<LandmarkPoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'col)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkPoint>)))
  "Returns string type for a message object of type '<LandmarkPoint>"
  "stargazer_ros_tool/LandmarkPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkPoint)))
  "Returns string type for a message object of type 'LandmarkPoint"
  "stargazer_ros_tool/LandmarkPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkPoint>)))
  "Returns md5sum for a message object of type '<LandmarkPoint>"
  "40b0802ec1ab1d1b341c706f76acdd9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkPoint)))
  "Returns md5sum for a message object of type 'LandmarkPoint"
  "40b0802ec1ab1d1b341c706f76acdd9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkPoint>)))
  "Returns full string definition for message of type '<LandmarkPoint>"
  (cl:format cl:nil "uint8 row~%uint8 col~%~%uint16 u~%uint16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkPoint)))
  "Returns full string definition for message of type 'LandmarkPoint"
  (cl:format cl:nil "uint8 row~%uint8 col~%~%uint16 u~%uint16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkPoint>))
  (cl:+ 0
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkPoint
    (cl:cons ':row (row msg))
    (cl:cons ':col (col msg))
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
))
