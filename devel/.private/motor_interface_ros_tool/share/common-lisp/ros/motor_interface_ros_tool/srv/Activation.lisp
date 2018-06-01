; Auto-generated. Do not edit!


(cl:in-package motor_interface_ros_tool-srv)


;//! \htmlinclude Activation-request.msg.html

(cl:defclass <Activation-request> (roslisp-msg-protocol:ros-message)
  ((activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Activation-request (<Activation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Activation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Activation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_interface_ros_tool-srv:<Activation-request> is deprecated: use motor_interface_ros_tool-srv:Activation-request instead.")))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <Activation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_interface_ros_tool-srv:activate-val is deprecated.  Use motor_interface_ros_tool-srv:activate instead.")
  (activate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Activation-request>) ostream)
  "Serializes a message object of type '<Activation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Activation-request>) istream)
  "Deserializes a message object of type '<Activation-request>"
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Activation-request>)))
  "Returns string type for a service object of type '<Activation-request>"
  "motor_interface_ros_tool/ActivationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activation-request)))
  "Returns string type for a service object of type 'Activation-request"
  "motor_interface_ros_tool/ActivationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Activation-request>)))
  "Returns md5sum for a message object of type '<Activation-request>"
  "b15627a984ebdd591b2ee87ce75c4d06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Activation-request)))
  "Returns md5sum for a message object of type 'Activation-request"
  "b15627a984ebdd591b2ee87ce75c4d06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Activation-request>)))
  "Returns full string definition for message of type '<Activation-request>"
  (cl:format cl:nil "bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Activation-request)))
  "Returns full string definition for message of type 'Activation-request"
  (cl:format cl:nil "bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Activation-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Activation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Activation-request
    (cl:cons ':activate (activate msg))
))
;//! \htmlinclude Activation-response.msg.html

(cl:defclass <Activation-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Activation-response (<Activation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Activation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Activation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_interface_ros_tool-srv:<Activation-response> is deprecated: use motor_interface_ros_tool-srv:Activation-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Activation-response>) ostream)
  "Serializes a message object of type '<Activation-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Activation-response>) istream)
  "Deserializes a message object of type '<Activation-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Activation-response>)))
  "Returns string type for a service object of type '<Activation-response>"
  "motor_interface_ros_tool/ActivationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activation-response)))
  "Returns string type for a service object of type 'Activation-response"
  "motor_interface_ros_tool/ActivationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Activation-response>)))
  "Returns md5sum for a message object of type '<Activation-response>"
  "b15627a984ebdd591b2ee87ce75c4d06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Activation-response)))
  "Returns md5sum for a message object of type 'Activation-response"
  "b15627a984ebdd591b2ee87ce75c4d06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Activation-response>)))
  "Returns full string definition for message of type '<Activation-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Activation-response)))
  "Returns full string definition for message of type 'Activation-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Activation-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Activation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Activation-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Activation)))
  'Activation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Activation)))
  'Activation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activation)))
  "Returns string type for a service object of type '<Activation>"
  "motor_interface_ros_tool/Activation")