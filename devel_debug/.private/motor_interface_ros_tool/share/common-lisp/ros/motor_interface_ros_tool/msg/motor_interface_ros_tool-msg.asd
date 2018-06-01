
(cl:in-package :asdf)

(defsystem "motor_interface_ros_tool-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotorCommand" :depends-on ("_package_MotorCommand"))
    (:file "_package_MotorCommand" :depends-on ("_package"))
    (:file "ServoCommand" :depends-on ("_package_ServoCommand"))
    (:file "_package_ServoCommand" :depends-on ("_package"))
  ))