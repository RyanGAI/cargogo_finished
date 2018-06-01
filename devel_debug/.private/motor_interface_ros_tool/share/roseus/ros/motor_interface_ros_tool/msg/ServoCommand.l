;; Auto-generated. Do not edit!


(when (boundp 'motor_interface_ros_tool::ServoCommand)
  (if (not (find-package "MOTOR_INTERFACE_ROS_TOOL"))
    (make-package "MOTOR_INTERFACE_ROS_TOOL"))
  (shadow 'ServoCommand (find-package "MOTOR_INTERFACE_ROS_TOOL")))
(unless (find-package "MOTOR_INTERFACE_ROS_TOOL::SERVOCOMMAND")
  (make-package "MOTOR_INTERFACE_ROS_TOOL::SERVOCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ServoCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motor_interface_ros_tool::ServoCommand
  :super ros::object
  :slots (_header _steering_angle ))

(defmethod motor_interface_ros_tool::ServoCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_angle __steering_angle) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_angle (float __steering_angle))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steering_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motor_interface_ros_tool::ServoCommand :md5sum-) "ab7b1e5a2c2ec7531126b10c3c9e22ad")
(setf (get motor_interface_ros_tool::ServoCommand :datatype-) "motor_interface_ros_tool/ServoCommand")
(setf (get motor_interface_ros_tool::ServoCommand :definition-)
      "Header header

float32 steering_angle # the steering angle of the car in [rad]

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

")



(provide :motor_interface_ros_tool/ServoCommand "ab7b1e5a2c2ec7531126b10c3c9e22ad")


