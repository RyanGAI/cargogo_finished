;; Auto-generated. Do not edit!


(when (boundp 'motor_interface_ros_tool::MotorCommand)
  (if (not (find-package "MOTOR_INTERFACE_ROS_TOOL"))
    (make-package "MOTOR_INTERFACE_ROS_TOOL"))
  (shadow 'MotorCommand (find-package "MOTOR_INTERFACE_ROS_TOOL")))
(unless (find-package "MOTOR_INTERFACE_ROS_TOOL::MOTORCOMMAND")
  (make-package "MOTOR_INTERFACE_ROS_TOOL::MOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MotorCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motor_interface_ros_tool::MotorCommand
  :super ros::object
  :slots (_header _velocity ))

(defmethod motor_interface_ros_tool::MotorCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity (float __velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motor_interface_ros_tool::MotorCommand :md5sum-) "f829323f183fabb3f889a576f21902c2")
(setf (get motor_interface_ros_tool::MotorCommand :datatype-) "motor_interface_ros_tool/MotorCommand")
(setf (get motor_interface_ros_tool::MotorCommand :definition-)
      "Header header

float32 velocity       # the velocity of the car in [m/s]

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



(provide :motor_interface_ros_tool/MotorCommand "f829323f183fabb3f889a576f21902c2")


