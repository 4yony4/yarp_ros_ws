
(cl:in-package :asdf)

(defsystem "yarp_ros_interfaces-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Yarpinfo" :depends-on ("_package_Yarpinfo"))
    (:file "_package_Yarpinfo" :depends-on ("_package"))
  ))