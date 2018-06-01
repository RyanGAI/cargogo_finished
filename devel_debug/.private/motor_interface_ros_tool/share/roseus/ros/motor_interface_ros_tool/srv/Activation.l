;; Auto-generated. Do not edit!


(when (boundp 'motor_interface_ros_tool::Activation)
  (if (not (find-package "MOTOR_INTERFACE_ROS_TOOL"))
    (make-package "MOTOR_INTERFACE_ROS_TOOL"))
  (shadow 'Activation (find-package "MOTOR_INTERFACE_ROS_TOOL")))
(unless (find-package "MOTOR_INTERFACE_ROS_TOOL::ACTIVATION")
  (make-package "MOTOR_INTERFACE_ROS_TOOL::ACTIVATION"))
(unless (find-package "MOTOR_INTERFACE_ROS_TOOL::ACTIVATIONREQUEST")
  (make-package "MOTOR_INTERFACE_ROS_TOOL::ACTIVATIONREQUEST"))
(unless (find-package "MOTOR_INTERFACE_ROS_TOOL::ACTIVATIONRESPONSE")
  (make-package "MOTOR_INTERFACE_ROS_TOOL::ACTIVATIONRESPONSE"))

(in-package "ROS")





(defclass motor_interface_ros_tool::ActivationRequest
  :super ros::object
  :slots (_activate ))

(defmethod motor_interface_ros_tool::ActivationRequest
  (:init
   (&key
    ((:activate __activate) nil)
    )
   (send-super :init)
   (setq _activate __activate)
   self)
  (:activate
   (&optional __activate)
   (if __activate (setq _activate __activate)) _activate)
  (:serialization-length
   ()
   (+
    ;; bool _activate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass motor_interface_ros_tool::ActivationResponse
  :super ros::object
  :slots ())

(defmethod motor_interface_ros_tool::ActivationResponse
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

(defclass motor_interface_ros_tool::Activation
  :super ros::object
  :slots ())

(setf (get motor_interface_ros_tool::Activation :md5sum-) "b15627a984ebdd591b2ee87ce75c4d06")
(setf (get motor_interface_ros_tool::Activation :datatype-) "motor_interface_ros_tool/Activation")
(setf (get motor_interface_ros_tool::Activation :request) motor_interface_ros_tool::ActivationRequest)
(setf (get motor_interface_ros_tool::Activation :response) motor_interface_ros_tool::ActivationResponse)

(defmethod motor_interface_ros_tool::ActivationRequest
  (:response () (instance motor_interface_ros_tool::ActivationResponse :init)))

(setf (get motor_interface_ros_tool::ActivationRequest :md5sum-) "b15627a984ebdd591b2ee87ce75c4d06")
(setf (get motor_interface_ros_tool::ActivationRequest :datatype-) "motor_interface_ros_tool/ActivationRequest")
(setf (get motor_interface_ros_tool::ActivationRequest :definition-)
      "bool activate
---

")

(setf (get motor_interface_ros_tool::ActivationResponse :md5sum-) "b15627a984ebdd591b2ee87ce75c4d06")
(setf (get motor_interface_ros_tool::ActivationResponse :datatype-) "motor_interface_ros_tool/ActivationResponse")
(setf (get motor_interface_ros_tool::ActivationResponse :definition-)
      "bool activate
---

")



(provide :motor_interface_ros_tool/Activation "b15627a984ebdd591b2ee87ce75c4d06")


