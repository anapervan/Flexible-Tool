; Auto-generated. Do not edit!


(cl:in-package interbotix_sdk-srv)


;//! \htmlinclude OperatingModes-request.msg.html

(cl:defclass <OperatingModes-request> (roslisp-msg-protocol:ros-message)
  ((arm_mode
    :reader arm_mode
    :initarg :arm_mode
    :type cl:string
    :initform "")
   (use_custom_arm_profiles
    :reader use_custom_arm_profiles
    :initarg :use_custom_arm_profiles
    :type cl:boolean
    :initform cl:nil)
   (arm_profile_velocity
    :reader arm_profile_velocity
    :initarg :arm_profile_velocity
    :type cl:integer
    :initform 0)
   (arm_profile_acceleration
    :reader arm_profile_acceleration
    :initarg :arm_profile_acceleration
    :type cl:integer
    :initform 0)
   (gripper_mode
    :reader gripper_mode
    :initarg :gripper_mode
    :type cl:string
    :initform "")
   (use_custom_gripper_profiles
    :reader use_custom_gripper_profiles
    :initarg :use_custom_gripper_profiles
    :type cl:boolean
    :initform cl:nil)
   (gripper_profile_velocity
    :reader gripper_profile_velocity
    :initarg :gripper_profile_velocity
    :type cl:integer
    :initform 0)
   (gripper_profile_acceleration
    :reader gripper_profile_acceleration
    :initarg :gripper_profile_acceleration
    :type cl:integer
    :initform 0))
)

(cl:defclass OperatingModes-request (<OperatingModes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OperatingModes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OperatingModes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_sdk-srv:<OperatingModes-request> is deprecated: use interbotix_sdk-srv:OperatingModes-request instead.")))

(cl:ensure-generic-function 'arm_mode-val :lambda-list '(m))
(cl:defmethod arm_mode-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:arm_mode-val is deprecated.  Use interbotix_sdk-srv:arm_mode instead.")
  (arm_mode m))

(cl:ensure-generic-function 'use_custom_arm_profiles-val :lambda-list '(m))
(cl:defmethod use_custom_arm_profiles-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:use_custom_arm_profiles-val is deprecated.  Use interbotix_sdk-srv:use_custom_arm_profiles instead.")
  (use_custom_arm_profiles m))

(cl:ensure-generic-function 'arm_profile_velocity-val :lambda-list '(m))
(cl:defmethod arm_profile_velocity-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:arm_profile_velocity-val is deprecated.  Use interbotix_sdk-srv:arm_profile_velocity instead.")
  (arm_profile_velocity m))

(cl:ensure-generic-function 'arm_profile_acceleration-val :lambda-list '(m))
(cl:defmethod arm_profile_acceleration-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:arm_profile_acceleration-val is deprecated.  Use interbotix_sdk-srv:arm_profile_acceleration instead.")
  (arm_profile_acceleration m))

(cl:ensure-generic-function 'gripper_mode-val :lambda-list '(m))
(cl:defmethod gripper_mode-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:gripper_mode-val is deprecated.  Use interbotix_sdk-srv:gripper_mode instead.")
  (gripper_mode m))

(cl:ensure-generic-function 'use_custom_gripper_profiles-val :lambda-list '(m))
(cl:defmethod use_custom_gripper_profiles-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:use_custom_gripper_profiles-val is deprecated.  Use interbotix_sdk-srv:use_custom_gripper_profiles instead.")
  (use_custom_gripper_profiles m))

(cl:ensure-generic-function 'gripper_profile_velocity-val :lambda-list '(m))
(cl:defmethod gripper_profile_velocity-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:gripper_profile_velocity-val is deprecated.  Use interbotix_sdk-srv:gripper_profile_velocity instead.")
  (gripper_profile_velocity m))

(cl:ensure-generic-function 'gripper_profile_acceleration-val :lambda-list '(m))
(cl:defmethod gripper_profile_acceleration-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_sdk-srv:gripper_profile_acceleration-val is deprecated.  Use interbotix_sdk-srv:gripper_profile_acceleration instead.")
  (gripper_profile_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OperatingModes-request>) ostream)
  "Serializes a message object of type '<OperatingModes-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arm_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arm_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_custom_arm_profiles) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'arm_profile_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arm_profile_acceleration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gripper_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gripper_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_custom_gripper_profiles) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gripper_profile_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gripper_profile_acceleration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OperatingModes-request>) istream)
  "Deserializes a message object of type '<OperatingModes-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arm_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'use_custom_arm_profiles) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_profile_velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_profile_acceleration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gripper_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'use_custom_gripper_profiles) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_profile_velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_profile_acceleration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OperatingModes-request>)))
  "Returns string type for a service object of type '<OperatingModes-request>"
  "interbotix_sdk/OperatingModesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperatingModes-request)))
  "Returns string type for a service object of type 'OperatingModes-request"
  "interbotix_sdk/OperatingModesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OperatingModes-request>)))
  "Returns md5sum for a message object of type '<OperatingModes-request>"
  "7f6f1b135f03cc8740935c2565835f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OperatingModes-request)))
  "Returns md5sum for a message object of type 'OperatingModes-request"
  "7f6f1b135f03cc8740935c2565835f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OperatingModes-request>)))
  "Returns full string definition for message of type '<OperatingModes-request>"
  (cl:format cl:nil "# Set the operating modes for the arm and/or gripper~%#~%# There are 5 valid operating modes for the arm. They are...~%#   \"none\" - arm motors will not respond to any joint command~%#   \"position\" - arm motors will expect only position commands~%#   \"velocity\" - arm motors will expect only velocity commands~%#   \"current\" - arm motors will expect only current commands~%#   \"pwm\" - arm motors will expect only pwm commands~%#~%# The gripper can also be set to \"ext_position\". This allows the gripper to do~%# multiple rotations instead of just one. It should only be used if you are using~%# a custom gripper capable of doing more than one rotation.~%#~%# For \"position\" control, profile_velocity sets the max speed of each joint while~%# profile_acceleration sets the max acceleration. Please reference the motor datasheet~%# (just click a motor at http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/)~%# for conversion factors. Values can be between 0 and 32,767. If setting custom profiles,~%# make sure to set 'use_custom_x_profiles' to true.~%#~%# For \"velocity\" control, only profile_acceleration is used.~%#~%# The velocity and acceleration profiles are not used in the \"current\" and \"pwm\" modes.~%#~%# Note that if the arm or gripper mode options are not set, the service will ignore~%# them. This is useful if you only want to change one operating mode and not the other.~%~%string arm_mode~%bool use_custom_arm_profiles~%int32 arm_profile_velocity~%int32 arm_profile_acceleration~%~%string gripper_mode~%bool use_custom_gripper_profiles~%int32 gripper_profile_velocity~%int32 gripper_profile_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OperatingModes-request)))
  "Returns full string definition for message of type 'OperatingModes-request"
  (cl:format cl:nil "# Set the operating modes for the arm and/or gripper~%#~%# There are 5 valid operating modes for the arm. They are...~%#   \"none\" - arm motors will not respond to any joint command~%#   \"position\" - arm motors will expect only position commands~%#   \"velocity\" - arm motors will expect only velocity commands~%#   \"current\" - arm motors will expect only current commands~%#   \"pwm\" - arm motors will expect only pwm commands~%#~%# The gripper can also be set to \"ext_position\". This allows the gripper to do~%# multiple rotations instead of just one. It should only be used if you are using~%# a custom gripper capable of doing more than one rotation.~%#~%# For \"position\" control, profile_velocity sets the max speed of each joint while~%# profile_acceleration sets the max acceleration. Please reference the motor datasheet~%# (just click a motor at http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/)~%# for conversion factors. Values can be between 0 and 32,767. If setting custom profiles,~%# make sure to set 'use_custom_x_profiles' to true.~%#~%# For \"velocity\" control, only profile_acceleration is used.~%#~%# The velocity and acceleration profiles are not used in the \"current\" and \"pwm\" modes.~%#~%# Note that if the arm or gripper mode options are not set, the service will ignore~%# them. This is useful if you only want to change one operating mode and not the other.~%~%string arm_mode~%bool use_custom_arm_profiles~%int32 arm_profile_velocity~%int32 arm_profile_acceleration~%~%string gripper_mode~%bool use_custom_gripper_profiles~%int32 gripper_profile_velocity~%int32 gripper_profile_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OperatingModes-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'arm_mode))
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'gripper_mode))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OperatingModes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OperatingModes-request
    (cl:cons ':arm_mode (arm_mode msg))
    (cl:cons ':use_custom_arm_profiles (use_custom_arm_profiles msg))
    (cl:cons ':arm_profile_velocity (arm_profile_velocity msg))
    (cl:cons ':arm_profile_acceleration (arm_profile_acceleration msg))
    (cl:cons ':gripper_mode (gripper_mode msg))
    (cl:cons ':use_custom_gripper_profiles (use_custom_gripper_profiles msg))
    (cl:cons ':gripper_profile_velocity (gripper_profile_velocity msg))
    (cl:cons ':gripper_profile_acceleration (gripper_profile_acceleration msg))
))
;//! \htmlinclude OperatingModes-response.msg.html

(cl:defclass <OperatingModes-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OperatingModes-response (<OperatingModes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OperatingModes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OperatingModes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_sdk-srv:<OperatingModes-response> is deprecated: use interbotix_sdk-srv:OperatingModes-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OperatingModes-response>) ostream)
  "Serializes a message object of type '<OperatingModes-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OperatingModes-response>) istream)
  "Deserializes a message object of type '<OperatingModes-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OperatingModes-response>)))
  "Returns string type for a service object of type '<OperatingModes-response>"
  "interbotix_sdk/OperatingModesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperatingModes-response)))
  "Returns string type for a service object of type 'OperatingModes-response"
  "interbotix_sdk/OperatingModesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OperatingModes-response>)))
  "Returns md5sum for a message object of type '<OperatingModes-response>"
  "7f6f1b135f03cc8740935c2565835f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OperatingModes-response)))
  "Returns md5sum for a message object of type 'OperatingModes-response"
  "7f6f1b135f03cc8740935c2565835f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OperatingModes-response>)))
  "Returns full string definition for message of type '<OperatingModes-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OperatingModes-response)))
  "Returns full string definition for message of type 'OperatingModes-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OperatingModes-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OperatingModes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OperatingModes-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OperatingModes)))
  'OperatingModes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OperatingModes)))
  'OperatingModes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperatingModes)))
  "Returns string type for a service object of type '<OperatingModes>"
  "interbotix_sdk/OperatingModes")