;; Auto-generated. Do not edit!


(when (boundp 'yarp_ros_interfaces::Yarpinfo)
  (if (not (find-package "YARP_ROS_INTERFACES"))
    (make-package "YARP_ROS_INTERFACES"))
  (shadow 'Yarpinfo (find-package "YARP_ROS_INTERFACES")))
(unless (find-package "YARP_ROS_INTERFACES::YARPINFO")
  (make-package "YARP_ROS_INTERFACES::YARPINFO"))

(in-package "ROS")
;;//! \htmlinclude Yarpinfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass yarp_ros_interfaces::Yarpinfo
  :super ros::object
  :slots (_Header _msg ))

(defmethod yarp_ros_interfaces::Yarpinfo
  (:init
   (&key
    ((:Header __Header) (instance std_msgs::Header :init))
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _Header __Header)
   (setq _msg (string __msg))
   self)
  (:Header
   (&rest __Header)
   (if (keywordp (car __Header))
       (send* _Header __Header)
     (progn
       (if __Header (setq _Header (car __Header)))
       _Header)))
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _Header
    (send _Header :serialization-length)
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _Header
       (send _Header :serialize s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _Header
     (send _Header :deserialize buf ptr-) (incf ptr- (send _Header :serialization-length))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yarp_ros_interfaces::Yarpinfo :md5sum-) "9e598282f81ec5c52bf15386d41b34bb")
(setf (get yarp_ros_interfaces::Yarpinfo :datatype-) "yarp_ros_interfaces/Yarpinfo")
(setf (get yarp_ros_interfaces::Yarpinfo :definition-)
      "std_msgs/Header Header
string msg
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :yarp_ros_interfaces/Yarpinfo "9e598282f81ec5c52bf15386d41b34bb")


