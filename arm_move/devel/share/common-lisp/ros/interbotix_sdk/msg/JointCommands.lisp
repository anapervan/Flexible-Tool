; Auto-generated. Do not edit!


(cl:in-package interbotix_sdk-msg)


;//! \htmlinclude JointCommands.msg.html

(cl:defclass <JointCommands> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointCommands (<JointCommands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCommands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCommands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_sdk-msg:<JointCommands> is deprecated: use interbotix_sdk-msg:JointCommands instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <JointCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-msg:cmd-val is deprecated.  Use interbotix_sdk-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCommands>) ostream)
  "Serializes a message object of type '<JointCommands>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCommands>) istream)
  "Deserializes a message object of type '<JointCommands>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cmd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCommands>)))
  "Returns string type for a message object of type '<JointCommands>"
  "interbotix_sdk/JointCommands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCommands)))
  "Returns string type for a message object of type 'JointCommands"
  "interbotix_sdk/JointCommands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCommands>)))
  "Returns md5sum for a message object of type '<JointCommands>"
  "306931a8f4b928ea86b21d23c7e4f90e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCommands)))
  "Returns md5sum for a message object of type 'JointCommands"
  "306931a8f4b928ea86b21d23c7e4f90e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCommands>)))
  "Returns full string definition for message of type '<JointCommands>"
  (cl:format cl:nil "# Send a vector of position, velocity, current, or pwm commands to the robot arm joints~%#~%# The order of the joints is the same as the order of the joint names as published in the joint states topic~%~%float64[] cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCommands)))
  "Returns full string definition for message of type 'JointCommands"
  (cl:format cl:nil "# Send a vector of position, velocity, current, or pwm commands to the robot arm joints~%#~%# The order of the joints is the same as the order of the joint names as published in the joint states topic~%~%float64[] cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCommands>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCommands>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCommands
    (cl:cons ':cmd (cmd msg))
))
