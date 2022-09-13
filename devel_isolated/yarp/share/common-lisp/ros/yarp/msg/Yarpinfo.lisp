; Auto-generated. Do not edit!


(cl:in-package yarp-msg)


;//! \htmlinclude Yarpinfo.msg.html

(cl:defclass <Yarpinfo> (roslisp-msg-protocol:ros-message)
  ((msg
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yarp-msg:<Yarpinfo> is deprecated: use yarp-msg:Yarpinfo instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Yarpinfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yarp-msg:msg-val is deprecated.  Use yarp-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Yarpinfo>) ostream)
  "Serializes a message object of type '<Yarpinfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Yarpinfo>) istream)
  "Deserializes a message object of type '<Yarpinfo>"
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
  "yarp/Yarpinfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Yarpinfo)))
  "Returns string type for a message object of type 'Yarpinfo"
  "yarp/Yarpinfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Yarpinfo>)))
  "Returns md5sum for a message object of type '<Yarpinfo>"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Yarpinfo)))
  "Returns md5sum for a message object of type 'Yarpinfo"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Yarpinfo>)))
  "Returns full string definition for message of type '<Yarpinfo>"
  (cl:format cl:nil "#std_msgs/Header Header~%string msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Yarpinfo)))
  "Returns full string definition for message of type 'Yarpinfo"
  (cl:format cl:nil "#std_msgs/Header Header~%string msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Yarpinfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Yarpinfo>))
  "Converts a ROS message object to a list"
  (cl:list 'Yarpinfo
    (cl:cons ':msg (msg msg))
))
