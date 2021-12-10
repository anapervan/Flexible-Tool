; Auto-generated. Do not edit!


(cl:in-package interbotix_sdk-srv)


;//! \htmlinclude RegisterValues-request.msg.html

(cl:defclass <RegisterValues-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (addr_name
    :reader addr_name
    :initarg :addr_name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass RegisterValues-request (<RegisterValues-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterValues-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterValues-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_sdk-srv:<RegisterValues-request> is deprecated: use interbotix_sdk-srv:RegisterValues-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:cmd-val is deprecated.  Use interbotix_sdk-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:id-val is deprecated.  Use interbotix_sdk-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'addr_name-val :lambda-list '(m))
(cl:defmethod addr_name-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:addr_name-val is deprecated.  Use interbotix_sdk-srv:addr_name instead.")
  (addr_name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:value-val is deprecated.  Use interbotix_sdk-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RegisterValues-request>)))
    "Constants for message type '<RegisterValues-request>"
  '((:ARM_JOINTS_AND_GRIPPER . 1)
    (:ARM_JOINTS . 2)
    (:GRIPPER . 3)
    (:SINGLE_MOTOR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RegisterValues-request)))
    "Constants for message type 'RegisterValues-request"
  '((:ARM_JOINTS_AND_GRIPPER . 1)
    (:ARM_JOINTS . 2)
    (:GRIPPER . 3)
    (:SINGLE_MOTOR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterValues-request>) ostream)
  "Serializes a message object of type '<RegisterValues-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'addr_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'addr_name))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterValues-request>) istream)
  "Deserializes a message object of type '<RegisterValues-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'addr_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterValues-request>)))
  "Returns string type for a service object of type '<RegisterValues-request>"
  "interbotix_sdk/RegisterValuesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterValues-request)))
  "Returns string type for a service object of type 'RegisterValues-request"
  "interbotix_sdk/RegisterValuesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterValues-request>)))
  "Returns md5sum for a message object of type '<RegisterValues-request>"
  "cbeb4af65dc01d04036fe7b5778dec84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterValues-request)))
  "Returns md5sum for a message object of type 'RegisterValues-request"
  "cbeb4af65dc01d04036fe7b5778dec84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterValues-request>)))
  "Returns full string definition for message of type '<RegisterValues-request>"
  (cl:format cl:nil "# Set or get the register(s) value(s) from motor(s)~%#~%# To get familiar with the register values, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.~%#~%# There are four options to set or get a register value:~%#   1) ARM_JOINTS_AND_GRIPPER - affects the register values for all joints, including the gripper.~%#   2) ARM_JOINTS - affects the register values for all joints, excluding the gripper.~%#   3) GRIPPER - affects the register value only for the gripper~%#   4) SINGLE_MOTOR - affects the register value for the motor specified by the 'id' parameter.~%#                     Note that the 'id' parameter only needs to be used for this option. For any~%#                     other option, it can be left blank.~%# Set the option to the 'cmd' parameter and the 'id' to the specified motor (if doing the~%# SINGLE_MOTOR option). 'id' is equivalent to the Dynamixel ID of the motor. To look up the motor IDs,~%# check out the robot-specific motor config files in the interbotix_sdk/config directory.~%#~%# Next, set the 'addr_name' parameter to the name of the register to be written to or read from.~%#~%# If setting the register(s) value, set the 'value' parameter to the desired value. This value will be~%# written to either one or many motors depending on the 'cmd' option selected. Note that if a joint is~%# controlled by two motors, both motors will be updated with the desired value.~%#~%# If reading the register(s) values, do not set the 'value' parameter. Instead, call the service at this~%# stage. The 'values' vector will be automatically updated with the register(s) value(s). If reading from~%# multiple joints at a time, the indexes of the values correspond with the joint names at those indexes in the~%# joint_states.name vector.~%~%int8 ARM_JOINTS_AND_GRIPPER = 1~%int8 ARM_JOINTS = 2~%int8 GRIPPER = 3~%int8 SINGLE_MOTOR = 4~%~%int8 cmd~%uint8 id~%string addr_name~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterValues-request)))
  "Returns full string definition for message of type 'RegisterValues-request"
  (cl:format cl:nil "# Set or get the register(s) value(s) from motor(s)~%#~%# To get familiar with the register values, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.~%#~%# There are four options to set or get a register value:~%#   1) ARM_JOINTS_AND_GRIPPER - affects the register values for all joints, including the gripper.~%#   2) ARM_JOINTS - affects the register values for all joints, excluding the gripper.~%#   3) GRIPPER - affects the register value only for the gripper~%#   4) SINGLE_MOTOR - affects the register value for the motor specified by the 'id' parameter.~%#                     Note that the 'id' parameter only needs to be used for this option. For any~%#                     other option, it can be left blank.~%# Set the option to the 'cmd' parameter and the 'id' to the specified motor (if doing the~%# SINGLE_MOTOR option). 'id' is equivalent to the Dynamixel ID of the motor. To look up the motor IDs,~%# check out the robot-specific motor config files in the interbotix_sdk/config directory.~%#~%# Next, set the 'addr_name' parameter to the name of the register to be written to or read from.~%#~%# If setting the register(s) value, set the 'value' parameter to the desired value. This value will be~%# written to either one or many motors depending on the 'cmd' option selected. Note that if a joint is~%# controlled by two motors, both motors will be updated with the desired value.~%#~%# If reading the register(s) values, do not set the 'value' parameter. Instead, call the service at this~%# stage. The 'values' vector will be automatically updated with the register(s) value(s). If reading from~%# multiple joints at a time, the indexes of the values correspond with the joint names at those indexes in the~%# joint_states.name vector.~%~%int8 ARM_JOINTS_AND_GRIPPER = 1~%int8 ARM_JOINTS = 2~%int8 GRIPPER = 3~%int8 SINGLE_MOTOR = 4~%~%int8 cmd~%uint8 id~%string addr_name~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterValues-request>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'addr_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterValues-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterValues-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':id (id msg))
    (cl:cons ':addr_name (addr_name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude RegisterValues-response.msg.html

(cl:defclass <RegisterValues-response> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass RegisterValues-response (<RegisterValues-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterValues-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterValues-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_sdk-srv:<RegisterValues-response> is deprecated: use interbotix_sdk-srv:RegisterValues-response instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <RegisterValues-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:values-val is deprecated.  Use interbotix_sdk-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterValues-response>) ostream)
  "Serializes a message object of type '<RegisterValues-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
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
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterValues-response>) istream)
  "Deserializes a message object of type '<RegisterValues-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterValues-response>)))
  "Returns string type for a service object of type '<RegisterValues-response>"
  "interbotix_sdk/RegisterValuesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterValues-response)))
  "Returns string type for a service object of type 'RegisterValues-response"
  "interbotix_sdk/RegisterValuesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterValues-response>)))
  "Returns md5sum for a message object of type '<RegisterValues-response>"
  "cbeb4af65dc01d04036fe7b5778dec84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterValues-response)))
  "Returns md5sum for a message object of type 'RegisterValues-response"
  "cbeb4af65dc01d04036fe7b5778dec84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterValues-response>)))
  "Returns full string definition for message of type '<RegisterValues-response>"
  (cl:format cl:nil "int32[] values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterValues-response)))
  "Returns full string definition for message of type 'RegisterValues-response"
  (cl:format cl:nil "int32[] values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterValues-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterValues-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterValues-response
    (cl:cons ':values (values msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterValues)))
  'RegisterValues-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterValues)))
  'RegisterValues-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterValues)))
  "Returns string type for a service object of type '<RegisterValues>"
  "interbotix_sdk/RegisterValues")