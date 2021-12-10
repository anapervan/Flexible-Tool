; Auto-generated. Do not edit!


(cl:in-package testing_environment_moveit-srv)


;//! \htmlinclude CustomPosition-request.msg.html

(cl:defclass <CustomPosition-request> (roslisp-msg-protocol:ros-message)
  ((arm_a_x_pos
    :reader arm_a_x_pos
    :initarg :arm_a_x_pos
    :type cl:float
    :initform 0.0)
   (arm_a_y_pos
    :reader arm_a_y_pos
    :initarg :arm_a_y_pos
    :type cl:float
    :initform 0.0)
   (arm_a_z_pos
    :reader arm_a_z_pos
    :initarg :arm_a_z_pos
    :type cl:float
    :initform 0.0)
   (arm_b_x_pos
    :reader arm_b_x_pos
    :initarg :arm_b_x_pos
    :type cl:float
    :initform 0.0)
   (arm_b_y_pos
    :reader arm_b_y_pos
    :initarg :arm_b_y_pos
    :type cl:float
    :initform 0.0)
   (arm_b_z_pos
    :reader arm_b_z_pos
    :initarg :arm_b_z_pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass CustomPosition-request (<CustomPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testing_environment_moveit-srv:<CustomPosition-request> is deprecated: use testing_environment_moveit-srv:CustomPosition-request instead.")))

(cl:ensure-generic-function 'arm_a_x_pos-val :lambda-list '(m))
(cl:defmethod arm_a_x_pos-val ((m <CustomPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_a_x_pos-val is deprecated.  Use testing_environment_moveit-srv:arm_a_x_pos instead.")
  (arm_a_x_pos m))

(cl:ensure-generic-function 'arm_a_y_pos-val :lambda-list '(m))
(cl:defmethod arm_a_y_pos-val ((m <CustomPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_a_y_pos-val is deprecated.  Use testing_environment_moveit-srv:arm_a_y_pos instead.")
  (arm_a_y_pos m))

(cl:ensure-generic-function 'arm_a_z_pos-val :lambda-list '(m))
(cl:defmethod arm_a_z_pos-val ((m <CustomPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_a_z_pos-val is deprecated.  Use testing_environment_moveit-srv:arm_a_z_pos instead.")
  (arm_a_z_pos m))

(cl:ensure-generic-function 'arm_b_x_pos-val :lambda-list '(m))
(cl:defmethod arm_b_x_pos-val ((m <CustomPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_b_x_pos-val is deprecated.  Use testing_environment_moveit-srv:arm_b_x_pos instead.")
  (arm_b_x_pos m))

(cl:ensure-generic-function 'arm_b_y_pos-val :lambda-list '(m))
(cl:defmethod arm_b_y_pos-val ((m <CustomPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_b_y_pos-val is deprecated.  Use testing_environment_moveit-srv:arm_b_y_pos instead.")
  (arm_b_y_pos m))

(cl:ensure-generic-function 'arm_b_z_pos-val :lambda-list '(m))
(cl:defmethod arm_b_z_pos-val ((m <CustomPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_b_z_pos-val is deprecated.  Use testing_environment_moveit-srv:arm_b_z_pos instead.")
  (arm_b_z_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomPosition-request>) ostream)
  "Serializes a message object of type '<CustomPosition-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm_a_x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm_a_y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm_a_z_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm_b_x_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm_b_y_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm_b_z_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomPosition-request>) istream)
  "Deserializes a message object of type '<CustomPosition-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_a_x_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_a_y_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_a_z_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_b_x_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_b_y_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_b_z_pos) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomPosition-request>)))
  "Returns string type for a service object of type '<CustomPosition-request>"
  "testing_environment_moveit/CustomPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomPosition-request)))
  "Returns string type for a service object of type 'CustomPosition-request"
  "testing_environment_moveit/CustomPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomPosition-request>)))
  "Returns md5sum for a message object of type '<CustomPosition-request>"
  "23304a51cb2971aef33a4c038286d08b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomPosition-request)))
  "Returns md5sum for a message object of type 'CustomPosition-request"
  "23304a51cb2971aef33a4c038286d08b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomPosition-request>)))
  "Returns full string definition for message of type '<CustomPosition-request>"
  (cl:format cl:nil "# x,y,z and yaw angle for arm A with respect to origin~%float64 arm_a_x_pos~%float64 arm_a_y_pos~%float64 arm_a_z_pos~%~%# x,y,z and yaw angle for arm B with respect to origin~%float64 arm_b_x_pos~%float64 arm_b_y_pos~%float64 arm_b_z_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomPosition-request)))
  "Returns full string definition for message of type 'CustomPosition-request"
  (cl:format cl:nil "# x,y,z and yaw angle for arm A with respect to origin~%float64 arm_a_x_pos~%float64 arm_a_y_pos~%float64 arm_a_z_pos~%~%# x,y,z and yaw angle for arm B with respect to origin~%float64 arm_b_x_pos~%float64 arm_b_y_pos~%float64 arm_b_z_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomPosition-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomPosition-request
    (cl:cons ':arm_a_x_pos (arm_a_x_pos msg))
    (cl:cons ':arm_a_y_pos (arm_a_y_pos msg))
    (cl:cons ':arm_a_z_pos (arm_a_z_pos msg))
    (cl:cons ':arm_b_x_pos (arm_b_x_pos msg))
    (cl:cons ':arm_b_y_pos (arm_b_y_pos msg))
    (cl:cons ':arm_b_z_pos (arm_b_z_pos msg))
))
;//! \htmlinclude CustomPosition-response.msg.html

(cl:defclass <CustomPosition-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CustomPosition-response (<CustomPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testing_environment_moveit-srv:<CustomPosition-response> is deprecated: use testing_environment_moveit-srv:CustomPosition-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomPosition-response>) ostream)
  "Serializes a message object of type '<CustomPosition-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomPosition-response>) istream)
  "Deserializes a message object of type '<CustomPosition-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomPosition-response>)))
  "Returns string type for a service object of type '<CustomPosition-response>"
  "testing_environment_moveit/CustomPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomPosition-response)))
  "Returns string type for a service object of type 'CustomPosition-response"
  "testing_environment_moveit/CustomPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomPosition-response>)))
  "Returns md5sum for a message object of type '<CustomPosition-response>"
  "23304a51cb2971aef33a4c038286d08b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomPosition-response)))
  "Returns md5sum for a message object of type 'CustomPosition-response"
  "23304a51cb2971aef33a4c038286d08b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomPosition-response>)))
  "Returns full string definition for message of type '<CustomPosition-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomPosition-response)))
  "Returns full string definition for message of type 'CustomPosition-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomPosition-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomPosition-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomPosition)))
  'CustomPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomPosition)))
  'CustomPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomPosition)))
  "Returns string type for a service object of type '<CustomPosition>"
  "testing_environment_moveit/CustomPosition")