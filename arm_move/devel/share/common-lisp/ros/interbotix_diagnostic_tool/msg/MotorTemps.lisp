; Auto-generated. Do not edit!


(cl:in-package interbotix_diagnostic_tool-msg)


;//! \htmlinclude MotorTemps.msg.html

(cl:defclass <MotorTemps> (roslisp-msg-protocol:ros-message)
  ((temps
    :reader temps
    :initarg :temps
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MotorTemps (<MotorTemps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorTemps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorTemps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_diagnostic_tool-msg:<MotorTemps> is deprecated: use interbotix_diagnostic_tool-msg:MotorTemps instead.")))

(cl:ensure-generic-function 'temps-val :lambda-list '(m))
(cl:defmethod temps-val ((m <MotorTemps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_diagnostic_tool-msg:temps-val is deprecated.  Use interbotix_diagnostic_tool-msg:temps instead.")
  (temps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorTemps>) ostream)
  "Serializes a message object of type '<MotorTemps>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'temps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'temps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorTemps>) istream)
  "Deserializes a message object of type '<MotorTemps>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'temps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'temps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorTemps>)))
  "Returns string type for a message object of type '<MotorTemps>"
  "interbotix_diagnostic_tool/MotorTemps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorTemps)))
  "Returns string type for a message object of type 'MotorTemps"
  "interbotix_diagnostic_tool/MotorTemps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorTemps>)))
  "Returns md5sum for a message object of type '<MotorTemps>"
  "7f89afb1d165a8db94d9bf67299f1c7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorTemps)))
  "Returns md5sum for a message object of type 'MotorTemps"
  "7f89afb1d165a8db94d9bf67299f1c7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorTemps>)))
  "Returns full string definition for message of type '<MotorTemps>"
  (cl:format cl:nil "# Publish a vector of joint temperatures [C] for the arm joints~%#~%# The order of the temperatures is the same as the order of the joint names as published in the joint states topic~%int32[] temps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorTemps)))
  "Returns full string definition for message of type 'MotorTemps"
  (cl:format cl:nil "# Publish a vector of joint temperatures [C] for the arm joints~%#~%# The order of the temperatures is the same as the order of the joint names as published in the joint states topic~%int32[] temps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorTemps>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'temps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorTemps>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorTemps
    (cl:cons ':temps (temps msg))
))
