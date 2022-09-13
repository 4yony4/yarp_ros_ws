
(cl:in-package :asdf)

(defsystem "yarp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Yarpinfo" :depends-on ("_package_Yarpinfo"))
    (:file "_package_Yarpinfo" :depends-on ("_package"))
  ))