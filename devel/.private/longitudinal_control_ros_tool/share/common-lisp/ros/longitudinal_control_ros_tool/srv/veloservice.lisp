; Auto-generated. Do not edit!


(cl:in-package longitudinal_control_ros_tool-srv)


;//! \htmlinclude veloservice-request.msg.html

(cl:defclass <veloservice-request> (roslisp-msg-protocol:ros-message)
  ((activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil)
   (velo
    :reader velo
    :initarg :velo
    :type cl:float
    :initform 0.0))
)

(cl:defclass veloservice-request (<veloservice-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <veloservice-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'veloservice-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name longitudinal_control_ros_tool-srv:<veloservice-request> is deprecated: use longitudinal_control_ros_tool-srv:veloservice-request instead.")))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <veloservice-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader longitudinal_control_ros_tool-srv:activate-val is deprecated.  Use longitudinal_control_ros_tool-srv:activate instead.")
  (activate m))

(cl:ensure-generic-function 'velo-val :lambda-list '(m))
(cl:defmethod velo-val ((m <veloservice-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader longitudinal_control_ros_tool-srv:velo-val is deprecated.  Use longitudinal_control_ros_tool-srv:velo instead.")
  (velo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <veloservice-request>) ostream)
  "Serializes a message object of type '<veloservice-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <veloservice-request>) istream)
  "Deserializes a message object of type '<veloservice-request>"
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velo) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<veloservice-request>)))
  "Returns string type for a service object of type '<veloservice-request>"
  "longitudinal_control_ros_tool/veloserviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'veloservice-request)))
  "Returns string type for a service object of type 'veloservice-request"
  "longitudinal_control_ros_tool/veloserviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<veloservice-request>)))
  "Returns md5sum for a message object of type '<veloservice-request>"
  "50f8ae24fde2172b763492643402bd9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'veloservice-request)))
  "Returns md5sum for a message object of type 'veloservice-request"
  "50f8ae24fde2172b763492643402bd9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<veloservice-request>)))
  "Returns full string definition for message of type '<veloservice-request>"
  (cl:format cl:nil "bool activate~%float32 velo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'veloservice-request)))
  "Returns full string definition for message of type 'veloservice-request"
  (cl:format cl:nil "bool activate~%float32 velo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <veloservice-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <veloservice-request>))
  "Converts a ROS message object to a list"
  (cl:list 'veloservice-request
    (cl:cons ':activate (activate msg))
    (cl:cons ':velo (velo msg))
))
;//! \htmlinclude veloservice-response.msg.html

(cl:defclass <veloservice-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass veloservice-response (<veloservice-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <veloservice-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'veloservice-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name longitudinal_control_ros_tool-srv:<veloservice-response> is deprecated: use longitudinal_control_ros_tool-srv:veloservice-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <veloservice-response>) ostream)
  "Serializes a message object of type '<veloservice-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <veloservice-response>) istream)
  "Deserializes a message object of type '<veloservice-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<veloservice-response>)))
  "Returns string type for a service object of type '<veloservice-response>"
  "longitudinal_control_ros_tool/veloserviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'veloservice-response)))
  "Returns string type for a service object of type 'veloservice-response"
  "longitudinal_control_ros_tool/veloserviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<veloservice-response>)))
  "Returns md5sum for a message object of type '<veloservice-response>"
  "50f8ae24fde2172b763492643402bd9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'veloservice-response)))
  "Returns md5sum for a message object of type 'veloservice-response"
  "50f8ae24fde2172b763492643402bd9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<veloservice-response>)))
  "Returns full string definition for message of type '<veloservice-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'veloservice-response)))
  "Returns full string definition for message of type 'veloservice-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <veloservice-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <veloservice-response>))
  "Converts a ROS message object to a list"
  (cl:list 'veloservice-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'veloservice)))
  'veloservice-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'veloservice)))
  'veloservice-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'veloservice)))
  "Returns string type for a service object of type '<veloservice>"
  "longitudinal_control_ros_tool/veloservice")