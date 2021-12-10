; Auto-generated. Do not edit!


(cl:in-package testing_environment_moveit-srv)


;//! \htmlinclude CustomAngle-request.msg.html

(cl:defclass <CustomAngle-request> (roslisp-msg-protocol:ros-message)
  ((arm_a_angles
    :reader arm_a_angles
    :initarg :arm_a_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (arm_b_angles
    :reader arm_b_angles
    :initarg :arm_b_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CustomAngle-request (<CustomAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testing_environment_moveit-srv:<CustomAngle-request> is deprecated: use testing_environment_moveit-srv:CustomAngle-request instead.")))

(cl:ensure-generic-function 'arm_a_angles-val :lambda-list '(m))
(cl:defmethod arm_a_angles-val ((m <CustomAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_a_angles-val is deprecated.  Use testing_environment_moveit-srv:arm_a_angles instead.")
  (arm_a_angles m))

(cl:ensure-generic-function 'arm_b_angles-val :lambda-list '(m))
(cl:defmethod arm_b_angles-val ((m <CustomAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader testing_environment_moveit-srv:arm_b_angles-val is deprecated.  Use testing_environment_moveit-srv:arm_b_angles instead.")
  (arm_b_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomAngle-request>) ostream)
  "Serializes a message object of type '<CustomAngle-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arm_a_angles))))
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
   (cl:slot-value msg 'arm_a_angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arm_b_angles))))
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
   (cl:slot-value msg 'arm_b_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomAngle-request>) istream)
  "Deserializes a message object of type '<CustomAngle-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arm_a_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arm_a_angles)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arm_b_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arm_b_angles)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomAngle-request>)))
  "Returns string type for a service object of type '<CustomAngle-request>"
  "testing_environment_moveit/CustomAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomAngle-request)))
  "Returns string type for a service object of type 'CustomAngle-request"
  "testing_environment_moveit/CustomAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomAngle-request>)))
  "Returns md5sum for a message object of type '<CustomAngle-request>"
  "a04862b47749bf3d91cb040c5b55f914")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomAngle-request)))
  "Returns md5sum for a message object of type 'CustomAngle-request"
  "a04862b47749bf3d91cb040c5b55f914")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomAngle-request>)))
  "Returns full string definition for message of type '<CustomAngle-request>"
  (cl:format cl:nil "# angles for arm A~%float64[] arm_a_angles~%~%# angles for arm B~%float64[] arm_b_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomAngle-request)))
  "Returns full string definition for message of type 'CustomAngle-request"
  (cl:format cl:nil "# angles for arm A~%float64[] arm_a_angles~%~%# angles for arm B~%float64[] arm_b_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomAngle-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arm_a_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arm_b_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomAngle-request
    (cl:cons ':arm_a_angles (arm_a_angles msg))
    (cl:cons ':arm_b_angles (arm_b_angles msg))
))
;//! \htmlinclude CustomAngle-response.msg.html

(cl:defclass <CustomAngle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CustomAngle-response (<CustomAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name testing_environment_moveit-srv:<CustomAngle-response> is deprecated: use testing_environment_moveit-srv:CustomAngle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomAngle-response>) ostream)
  "Serializes a message object of type '<CustomAngle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomAngle-response>) istream)
  "Deserializes a message object of type '<CustomAngle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomAngle-response>)))
  "Returns string type for a service object of type '<CustomAngle-response>"
  "testing_environment_moveit/CustomAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomAngle-response)))
  "Returns string type for a service object of type 'CustomAngle-response"
  "testing_environment_moveit/CustomAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomAngle-response>)))
  "Returns md5sum for a message object of type '<CustomAngle-response>"
  "a04862b47749bf3d91cb040c5b55f914")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomAngle-response)))
  "Returns md5sum for a message object of type 'CustomAngle-response"
  "a04862b47749bf3d91cb040c5b55f914")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomAngle-response>)))
  "Returns full string definition for message of type '<CustomAngle-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomAngle-response)))
  "Returns full string definition for message of type 'CustomAngle-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomAngle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomAngle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomAngle)))
  'CustomAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomAngle)))
  'CustomAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomAngle)))
  "Returns string type for a service object of type '<CustomAngle>"
  "testing_environment_moveit/CustomAngle")