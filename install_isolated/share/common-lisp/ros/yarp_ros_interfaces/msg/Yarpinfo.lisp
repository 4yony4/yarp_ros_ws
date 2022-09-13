; Auto-generated. Do not edit!


(cl:in-package yarp_ros_interfaces-msg)


;//! \htmlinclude Yarpinfo.msg.html

(cl:defclass <Yarpinfo> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass Yarpinfo (<Yarpinfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Yarpinfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Yarpinfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yarp_ros_interfaces-msg:<Yarpinfo> is deprecated: use yarp_ros_interfaces-msg:Yarpinfo instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <Yarpinfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yarp_ros_interfaces-msg:Header-val is deprecated.  Use yarp_ros_interfaces-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Yarpinfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yarp_ros_interfaces-msg:msg-val is deprecated.  Use yarp_ros_interfaces-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Yarpinfo>) ostream)
  "Serializes a message object of type '<Yarpinfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Yarpinfo>) istream)
  "Deserializes a message object of type '<Yarpinfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Yarpinfo>)))
  "Returns string type for a message object of type '<Yarpinfo>"
  "yarp_ros_interfaces/Yarpinfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Yarpinfo)))
  "Returns string type for a message object of type 'Yarpinfo"
  "yarp_ros_interfaces/Yarpinfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Yarpinfo>)))
  "Returns md5sum for a message object of type '<Yarpinfo>"
  "9e598282f81ec5c52bf15386d41b34bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Yarpinfo)))
  "Returns md5sum for a message object of type 'Yarpinfo"
  "9e598282f81ec5c52bf15386d41b34bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Yarpinfo>)))
  "Returns full string definition for message of type '<Yarpinfo>"
  (cl:format cl:nil "std_msgs/Header Header~%string msg~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Yarpinfo)))
  "Returns full string definition for message of type 'Yarpinfo"
  (cl:format cl:nil "std_msgs/Header Header~%string msg~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Yarpinfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Yarpinfo>))
  "Converts a ROS message object to a list"
  (cl:list 'Yarpinfo
    (cl:cons ':Header (Header msg))
    (cl:cons ':msg (msg msg))
))
