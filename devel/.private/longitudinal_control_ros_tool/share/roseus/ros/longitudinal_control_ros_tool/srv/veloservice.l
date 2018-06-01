;; Auto-generated. Do not edit!


(when (boundp 'longitudinal_control_ros_tool::veloservice)
  (if (not (find-package "LONGITUDINAL_CONTROL_ROS_TOOL"))
    (make-package "LONGITUDINAL_CONTROL_ROS_TOOL"))
  (shadow 'veloservice (find-package "LONGITUDINAL_CONTROL_ROS_TOOL")))
(unless (find-package "LONGITUDINAL_CONTROL_ROS_TOOL::VELOSERVICE")
  (make-package "LONGITUDINAL_CONTROL_ROS_TOOL::VELOSERVICE"))
(unless (find-package "LONGITUDINAL_CONTROL_ROS_TOOL::VELOSERVICEREQUEST")
  (make-package "LONGITUDINAL_CONTROL_ROS_TOOL::VELOSERVICEREQUEST"))
(unless (find-package "LONGITUDINAL_CONTROL_ROS_TOOL::VELOSERVICERESPONSE")
  (make-package "LONGITUDINAL_CONTROL_ROS_TOOL::VELOSERVICERESPONSE"))

(in-package "ROS")





(defclass longitudinal_control_ros_tool::veloserviceRequest
  :super ros::object
  :slots (_activate _velo ))

(defmethod longitudinal_control_ros_tool::veloserviceRequest
  (:init
   (&key
    ((:activate __activate) nil)
    ((:velo __velo) 0.0)
    )
   (send-super :init)
   (setq _activate __activate)
   (setq _velo (float __velo))
   self)
  (:activate
   (&optional __activate)
   (if __activate (setq _activate __activate)) _activate)
  (:velo
   (&optional __velo)
   (if __velo (setq _velo __velo)) _velo)
  (:serialization-length
   ()
   (+
    ;; bool _activate
    1
    ;; float32 _velo
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;; float32 _velo
       (sys::poke _velo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _velo
     (setq _velo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass longitudinal_control_ros_tool::veloserviceResponse
  :super ros::object
  :slots ())

(defmethod longitudinal_control_ros_tool::veloserviceResponse
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

(defclass longitudinal_control_ros_tool::veloservice
  :super ros::object
  :slots ())

(setf (get longitudinal_control_ros_tool::veloservice :md5sum-) "50f8ae24fde2172b763492643402bd9d")
(setf (get longitudinal_control_ros_tool::veloservice :datatype-) "longitudinal_control_ros_tool/veloservice")
(setf (get longitudinal_control_ros_tool::veloservice :request) longitudinal_control_ros_tool::veloserviceRequest)
(setf (get longitudinal_control_ros_tool::veloservice :response) longitudinal_control_ros_tool::veloserviceResponse)

(defmethod longitudinal_control_ros_tool::veloserviceRequest
  (:response () (instance longitudinal_control_ros_tool::veloserviceResponse :init)))

(setf (get longitudinal_control_ros_tool::veloserviceRequest :md5sum-) "50f8ae24fde2172b763492643402bd9d")
(setf (get longitudinal_control_ros_tool::veloserviceRequest :datatype-) "longitudinal_control_ros_tool/veloserviceRequest")
(setf (get longitudinal_control_ros_tool::veloserviceRequest :definition-)
      "bool activate
float32 velo
---

")

(setf (get longitudinal_control_ros_tool::veloserviceResponse :md5sum-) "50f8ae24fde2172b763492643402bd9d")
(setf (get longitudinal_control_ros_tool::veloserviceResponse :datatype-) "longitudinal_control_ros_tool/veloserviceResponse")
(setf (get longitudinal_control_ros_tool::veloserviceResponse :definition-)
      "bool activate
float32 velo
---

")



(provide :longitudinal_control_ros_tool/veloservice "50f8ae24fde2172b763492643402bd9d")


