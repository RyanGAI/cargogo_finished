
(cl:in-package :asdf)

(defsystem "stargazer_ros_tool-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Landmark" :depends-on ("_package_Landmark"))
    (:file "_package_Landmark" :depends-on ("_package"))
    (:file "LandmarkArray" :depends-on ("_package_LandmarkArray"))
    (:file "_package_LandmarkArray" :depends-on ("_package"))
    (:file "LandmarkPoint" :depends-on ("_package_LandmarkPoint"))
    (:file "_package_LandmarkPoint" :depends-on ("_package"))
  ))