;; Auto-generated. Do not edit!


(when (boundp 'stargazer_ros_tool::Landmark)
  (if (not (find-package "STARGAZER_ROS_TOOL"))
    (make-package "STARGAZER_ROS_TOOL"))
  (shadow 'Landmark (find-package "STARGAZER_ROS_TOOL")))
(unless (find-package "STARGAZER_ROS_TOOL::LANDMARK")
  (make-package "STARGAZER_ROS_TOOL::LANDMARK"))

(in-package "ROS")
;;//! \htmlinclude Landmark.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stargazer_ros_tool::Landmark
  :super ros::object
  :slots (_header _id _corner_points _id_points ))

(defmethod stargazer_ros_tool::Landmark
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:corner_points __corner_points) (let (r) (dotimes (i 0) (push (instance stargazer_ros_tool::LandmarkPoint :init) r)) r))
    ((:id_points __id_points) (let (r) (dotimes (i 0) (push (instance stargazer_ros_tool::LandmarkPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _corner_points __corner_points)
   (setq _id_points __id_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:corner_points
   (&rest __corner_points)
   (if (keywordp (car __corner_points))
       (send* _corner_points __corner_points)
     (progn
       (if __corner_points (setq _corner_points (car __corner_points)))
       _corner_points)))
  (:id_points
   (&rest __id_points)
   (if (keywordp (car __id_points))
       (send* _id_points __id_points)
     (progn
       (if __id_points (setq _id_points (car __id_points)))
       _id_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; stargazer_ros_tool/LandmarkPoint[] _corner_points
    (apply #'+ (send-all _corner_points :serialization-length)) 4
    ;; stargazer_ros_tool/LandmarkPoint[] _id_points
    (apply #'+ (send-all _id_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; stargazer_ros_tool/LandmarkPoint[] _corner_points
     (write-long (length _corner_points) s)
     (dolist (elem _corner_points)
       (send elem :serialize s)
       )
     ;; stargazer_ros_tool/LandmarkPoint[] _id_points
     (write-long (length _id_points) s)
     (dolist (elem _id_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; stargazer_ros_tool/LandmarkPoint[] _corner_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corner_points (let (r) (dotimes (i n) (push (instance stargazer_ros_tool::LandmarkPoint :init) r)) r))
     (dolist (elem- _corner_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; stargazer_ros_tool/LandmarkPoint[] _id_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id_points (let (r) (dotimes (i n) (push (instance stargazer_ros_tool::LandmarkPoint :init) r)) r))
     (dolist (elem- _id_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stargazer_ros_tool::Landmark :md5sum-) "1cd8dba4674c7e54a53fc21b6eccc87c")
(setf (get stargazer_ros_tool::Landmark :datatype-) "stargazer_ros_tool/Landmark")
(setf (get stargazer_ros_tool::Landmark :definition-)
      "Header header
int32 id
LandmarkPoint[] corner_points
LandmarkPoint[] id_points
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

================================================================================
MSG: stargazer_ros_tool/LandmarkPoint
uint8 row
uint8 col

uint16 u
uint16 v

")



(provide :stargazer_ros_tool/Landmark "1cd8dba4674c7e54a53fc21b6eccc87c")


