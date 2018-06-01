
(cl:in-package :asdf)

(defsystem "traffic_sign_detection_ros_tool-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "jihuo" :depends-on ("_package_jihuo"))
    (:file "_package_jihuo" :depends-on ("_package"))
  ))