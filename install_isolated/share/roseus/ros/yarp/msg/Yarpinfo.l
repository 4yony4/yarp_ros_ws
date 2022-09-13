;; Auto-generated. Do not edit!


(when (boundp 'yarp::Yarpinfo)
  (if (not (find-package "YARP"))
    (make-package "YARP"))
  (shadow 'Yarpinfo (find-package "YARP")))
(unless (find-package "YARP::YARPINFO")
  (make-package "YARP::YARPINFO"))

(in-package "ROS")
;;//! \htmlinclude Yarpinfo.msg.html


(defclass yarp::Yarpinfo
  :super ros::object
  :slots (_msg ))

(defmethod yarp::Yarpinfo
  (:init
   (&key
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _msg (string __msg))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yarp::Yarpinfo :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get yarp::Yarpinfo :datatype-) "yarp/Yarpinfo")
(setf (get yarp::Yarpinfo :definition-)
      "#std_msgs/Header Header
string msg
")



(provide :yarp/Yarpinfo "7d96ed730776804754140b85e64c862e")


