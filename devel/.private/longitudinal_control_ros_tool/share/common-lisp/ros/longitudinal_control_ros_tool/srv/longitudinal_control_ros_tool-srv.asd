
(cl:in-package :asdf)

(defsystem "longitudinal_control_ros_tool-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "veloservice" :depends-on ("_package_veloservice"))
    (:file "_package_veloservice" :depends-on ("_package"))
  ))