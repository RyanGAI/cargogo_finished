; Auto-generated. Do not edit!


(cl:in-package traffic_sign_detection_ros_tool-srv)


;//! \htmlinclude jihuo-request.msg.html

(cl:defclass <jihuo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass jihuo-request (<jihuo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jihuo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jihuo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traffic_sign_detection_ros_tool-srv:<jihuo-request> is deprecated: use traffic_sign_detection_ros_tool-srv:jihuo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jihuo-request>) ostream)
  "Serializes a message object of type '<jihuo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jihuo-request>) istream)
  "Deserializes a message object of type '<jihuo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jihuo-request>)))
  "Returns string type for a service object of type '<jihuo-request>"
  "traffic_sign_detection_ros_tool/jihuoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jihuo-request)))
  "Returns string type for a service object of type 'jihuo-request"
  "traffic_sign_detection_ros_tool/jihuoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jihuo-request>)))
  "Returns md5sum for a message object of type '<jihuo-request>"
  "226ee36d4761e1eb439a49b241f4bd84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jihuo-request)))
  "Returns md5sum for a message object of type 'jihuo-request"
  "226ee36d4761e1eb439a49b241f4bd84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jihuo-request>)))
  "Returns full string definition for message of type '<jihuo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jihuo-request)))
  "Returns full string definition for message of type 'jihuo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jihuo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jihuo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'jihuo-request
))
;//! \htmlinclude jihuo-response.msg.html

(cl:defclass <jihuo-response> (roslisp-msg-protocol:ros-message)
  ((stop_sign
    :reader stop_sign
    :initarg :stop_sign
    :type cl:boolean
    :initform cl:nil)
   (arrows
    :reader arrows
    :initarg :arrows
    :type cl:fixnum
    :initform 0))
)

(cl:defclass jihuo-response (<jihuo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jihuo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jihuo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traffic_sign_detection_ros_tool-srv:<jihuo-response> is deprecated: use traffic_sign_detection_ros_tool-srv:jihuo-response instead.")))

(cl:ensure-generic-function 'stop_sign-val :lambda-list '(m))
(cl:defmethod stop_sign-val ((m <jihuo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traffic_sign_detection_ros_tool-srv:stop_sign-val is deprecated.  Use traffic_sign_detection_ros_tool-srv:stop_sign instead.")
  (stop_sign m))

(cl:ensure-generic-function 'arrows-val :lambda-list '(m))
(cl:defmethod arrows-val ((m <jihuo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traffic_sign_detection_ros_tool-srv:arrows-val is deprecated.  Use traffic_sign_detection_ros_tool-srv:arrows instead.")
  (arrows m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jihuo-response>) ostream)
  "Serializes a message object of type '<jihuo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_sign) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arrows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arrows)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jihuo-response>) istream)
  "Deserializes a message object of type '<jihuo-response>"
    (cl:setf (cl:slot-value msg 'stop_sign) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arrows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arrows)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jihuo-response>)))
  "Returns string type for a service object of type '<jihuo-response>"
  "traffic_sign_detection_ros_tool/jihuoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jihuo-response)))
  "Returns string type for a service object of type 'jihuo-response"
  "traffic_sign_detection_ros_tool/jihuoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jihuo-response>)))
  "Returns md5sum for a message object of type '<jihuo-response>"
  "226ee36d4761e1eb439a49b241f4bd84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jihuo-response)))
  "Returns md5sum for a message object of type 'jihuo-response"
  "226ee36d4761e1eb439a49b241f4bd84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jihuo-response>)))
  "Returns full string definition for message of type '<jihuo-response>"
  (cl:format cl:nil "bool stop_sign~%uint16 arrows~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jihuo-response)))
  "Returns full string definition for message of type 'jihuo-response"
  (cl:format cl:nil "bool stop_sign~%uint16 arrows~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jihuo-response>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jihuo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'jihuo-response
    (cl:cons ':stop_sign (stop_sign msg))
    (cl:cons ':arrows (arrows msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'jihuo)))
  'jihuo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'jihuo)))
  'jihuo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jihuo)))
  "Returns string type for a service object of type '<jihuo>"
  "traffic_sign_detection_ros_tool/jihuo")