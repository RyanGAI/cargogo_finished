;; Auto-generated. Do not edit!


(when (boundp 'stargazer_ros_tool::LandmarkPoint)
  (if (not (find-package "STARGAZER_ROS_TOOL"))
    (make-package "STARGAZER_ROS_TOOL"))
  (shadow 'LandmarkPoint (find-package "STARGAZER_ROS_TOOL")))
(unless (find-package "STARGAZER_ROS_TOOL::LANDMARKPOINT")
  (make-package "STARGAZER_ROS_TOOL::LANDMARKPOINT"))

(in-package "ROS")
;;//! \htmlinclude LandmarkPoint.msg.html


(defclass stargazer_ros_tool::LandmarkPoint
  :super ros::object
  :slots (_row _col _u _v ))

(defmethod stargazer_ros_tool::LandmarkPoint
  (:init
   (&key
    ((:row __row) 0)
    ((:col __col) 0)
    ((:u __u) 0)
    ((:v __v) 0)
    )
   (send-super :init)
   (setq _row (round __row))
   (setq _col (round __col))
   (setq _u (round __u))
   (setq _v (round __v))
   self)
  (:row
   (&optional __row)
   (if __row (setq _row __row)) _row)
  (:col
   (&optional __col)
   (if __col (setq _col __col)) _col)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; uint8 _row
    1
    ;; uint8 _col
    1
    ;; uint16 _u
    2
    ;; uint16 _v
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _row
       (write-byte _row s)
     ;; uint8 _col
       (write-byte _col s)
     ;; uint16 _u
       (write-word _u s)
     ;; uint16 _v
       (write-word _v s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _row
     (setq _row (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _col
     (setq _col (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _u
     (setq _u (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _v
     (setq _v (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get stargazer_ros_tool::LandmarkPoint :md5sum-) "40b0802ec1ab1d1b341c706f76acdd9a")
(setf (get stargazer_ros_tool::LandmarkPoint :datatype-) "stargazer_ros_tool/LandmarkPoint")
(setf (get stargazer_ros_tool::LandmarkPoint :definition-)
      "uint8 row
uint8 col

uint16 u
uint16 v

")



(provide :stargazer_ros_tool/LandmarkPoint "40b0802ec1ab1d1b341c706f76acdd9a")


