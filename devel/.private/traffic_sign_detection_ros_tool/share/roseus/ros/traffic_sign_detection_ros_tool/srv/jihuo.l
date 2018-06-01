;; Auto-generated. Do not edit!


(when (boundp 'traffic_sign_detection_ros_tool::jihuo)
  (if (not (find-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL"))
    (make-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL"))
  (shadow 'jihuo (find-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL")))
(unless (find-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL::JIHUO")
  (make-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL::JIHUO"))
(unless (find-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL::JIHUOREQUEST")
  (make-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL::JIHUOREQUEST"))
(unless (find-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL::JIHUORESPONSE")
  (make-package "TRAFFIC_SIGN_DETECTION_ROS_TOOL::JIHUORESPONSE"))

(in-package "ROS")





(defclass traffic_sign_detection_ros_tool::jihuoRequest
  :super ros::object
  :slots ())

(defmethod traffic_sign_detection_ros_tool::jihuoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass traffic_sign_detection_ros_tool::jihuoResponse
  :super ros::object
  :slots (_stop_sign _arrows ))

(defmethod traffic_sign_detection_ros_tool::jihuoResponse
  (:init
   (&key
    ((:stop_sign __stop_sign) nil)
    ((:arrows __arrows) 0)
    )
   (send-super :init)
   (setq _stop_sign __stop_sign)
   (setq _arrows (round __arrows))
   self)
  (:stop_sign
   (&optional __stop_sign)
   (if __stop_sign (setq _stop_sign __stop_sign)) _stop_sign)
  (:arrows
   (&optional __arrows)
   (if __arrows (setq _arrows __arrows)) _arrows)
  (:serialization-length
   ()
   (+
    ;; bool _stop_sign
    1
    ;; uint16 _arrows
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop_sign
       (if _stop_sign (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _arrows
       (write-word _arrows s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop_sign
     (setq _stop_sign (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _arrows
     (setq _arrows (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass traffic_sign_detection_ros_tool::jihuo
  :super ros::object
  :slots ())

(setf (get traffic_sign_detection_ros_tool::jihuo :md5sum-) "226ee36d4761e1eb439a49b241f4bd84")
(setf (get traffic_sign_detection_ros_tool::jihuo :datatype-) "traffic_sign_detection_ros_tool/jihuo")
(setf (get traffic_sign_detection_ros_tool::jihuo :request) traffic_sign_detection_ros_tool::jihuoRequest)
(setf (get traffic_sign_detection_ros_tool::jihuo :response) traffic_sign_detection_ros_tool::jihuoResponse)

(defmethod traffic_sign_detection_ros_tool::jihuoRequest
  (:response () (instance traffic_sign_detection_ros_tool::jihuoResponse :init)))

(setf (get traffic_sign_detection_ros_tool::jihuoRequest :md5sum-) "226ee36d4761e1eb439a49b241f4bd84")
(setf (get traffic_sign_detection_ros_tool::jihuoRequest :datatype-) "traffic_sign_detection_ros_tool/jihuoRequest")
(setf (get traffic_sign_detection_ros_tool::jihuoRequest :definition-)
      "---
bool stop_sign
uint16 arrows

")

(setf (get traffic_sign_detection_ros_tool::jihuoResponse :md5sum-) "226ee36d4761e1eb439a49b241f4bd84")
(setf (get traffic_sign_detection_ros_tool::jihuoResponse :datatype-) "traffic_sign_detection_ros_tool/jihuoResponse")
(setf (get traffic_sign_detection_ros_tool::jihuoResponse :definition-)
      "---
bool stop_sign
uint16 arrows

")



(provide :traffic_sign_detection_ros_tool/jihuo "226ee36d4761e1eb439a49b241f4bd84")


