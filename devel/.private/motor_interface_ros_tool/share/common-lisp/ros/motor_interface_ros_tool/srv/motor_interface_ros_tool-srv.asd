
(cl:in-package :asdf)

(defsystem "motor_interface_ros_tool-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Activation" :depends-on ("_package_Activation"))
    (:file "_package_Activation" :depends-on ("_package"))
  ))