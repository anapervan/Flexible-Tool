; Auto-generated. Do not edit!


(cl:in-package interbotix_turret_control-msg)


;//! \htmlinclude TurretControl.msg.html

(cl:defclass <TurretControl> (roslisp-msg-protocol:ros-message)
  ((pan_cmd
    :reader pan_cmd
    :initarg :pan_cmd
    :type cl:fixnum
    :initform 0)
   (tilt_cmd
    :reader tilt_cmd
    :initarg :tilt_cmd
    :type cl:fixnum
    :initform 0)
   (arm_speed_cmd
    :reader arm_speed_cmd
    :initarg :arm_speed_cmd
    :type cl:fixnum
    :initform 0)
   (arm_toggle_speed_cmd
    :reader arm_toggle_speed_cmd
    :initarg :arm_toggle_speed_cmd
    :type cl:fixnum
    :initform 0)
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TurretControl (<TurretControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurretControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurretControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_turret_control-msg:<TurretControl> is deprecated: use interbotix_turret_control-msg:TurretControl instead.")))

(cl:ensure-generic-function 'pan_cmd-val :lambda-list '(m))
(cl:defmethod pan_cmd-val ((m <TurretControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_turret_control-msg:pan_cmd-val is deprecated.  Use interbotix_turret_control-msg:pan_cmd instead.")
  (pan_cmd m))

(cl:ensure-generic-function 'tilt_cmd-val :lambda-list '(m))
(cl:defmethod tilt_cmd-val ((m <TurretControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_turret_control-msg:tilt_cmd-val is deprecated.  Use interbotix_turret_control-msg:tilt_cmd instead.")
  (tilt_cmd m))

(cl:ensure-generic-function 'arm_speed_cmd-val :lambda-list '(m))
(cl:defmethod arm_speed_cmd-val ((m <TurretControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_turret_control-msg:arm_speed_cmd-val is deprecated.  Use interbotix_turret_control-msg:arm_speed_cmd instead.")
  (arm_speed_cmd m))

(cl:ensure-generic-function 'arm_toggle_speed_cmd-val :lambda-list '(m))
(cl:defmethod arm_toggle_speed_cmd-val ((m <TurretControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_turret_control-msg:arm_toggle_speed_cmd-val is deprecated.  Use interbotix_turret_control-msg:arm_toggle_speed_cmd instead.")
  (arm_toggle_speed_cmd m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <TurretControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_turret_control-msg:robot_pose-val is deprecated.  Use interbotix_turret_control-msg:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurretControl>)))
    "Constants for message type '<TurretControl>"
  '((:PAN_CCW . 1)
    (:PAN_CW . 2)
    (:TILT_CCW . 3)
    (:TILT_CW . 4)
    (:ARM_LOW_SPEED . 5)
    (:ARM_HIGH_SPEED . 6)
    (:ARM_COURSE_SPEED . 7)
    (:ARM_FINE_SPEED . 8)
    (:HOME_POSE . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurretControl)))
    "Constants for message type 'TurretControl"
  '((:PAN_CCW . 1)
    (:PAN_CW . 2)
    (:TILT_CCW . 3)
    (:TILT_CW . 4)
    (:ARM_LOW_SPEED . 5)
    (:ARM_HIGH_SPEED . 6)
    (:ARM_COURSE_SPEED . 7)
    (:ARM_FINE_SPEED . 8)
    (:HOME_POSE . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurretControl>) ostream)
  "Serializes a message object of type '<TurretControl>"
  (cl:let* ((signed (cl:slot-value msg 'pan_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arm_speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arm_toggle_speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_pose)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurretControl>) istream)
  "Deserializes a message object of type '<TurretControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pan_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_toggle_speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_pose) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurretControl>)))
  "Returns string type for a message object of type '<TurretControl>"
  "interbotix_turret_control/TurretControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurretControl)))
  "Returns string type for a message object of type 'TurretControl"
  "interbotix_turret_control/TurretControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurretControl>)))
  "Returns md5sum for a message object of type '<TurretControl>"
  "3e39c9e14721edfb6fd43b3f34f67c7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurretControl)))
  "Returns md5sum for a message object of type 'TurretControl"
  "3e39c9e14721edfb6fd43b3f34f67c7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurretControl>)))
  "Returns full string definition for message of type '<TurretControl>"
  (cl:format cl:nil "# Send commands from the joy_node to the turret_control node~%~%# enum values that define the joystick controls for the robot~%~%# Control the motion of the pan joint~%int8 PAN_CCW = 1~%int8 PAN_CW = 2~%~%# Control the motion of the tilt joint~%int8 TILT_CCW = 3~%int8 TILT_CW = 4~%~%# Control the speed that the robot arm moves~%int8 ARM_LOW_SPEED = 5~%int8 ARM_HIGH_SPEED = 6~%~%# Quickly toggle between a fast and slow speed setting~%int8 ARM_COURSE_SPEED = 7~%int8 ARM_FINE_SPEED = 8~%~%# Set robot to specific pose~%int8 HOME_POSE = 9~%~%int8 pan_cmd~%int8 tilt_cmd~%int8 arm_speed_cmd~%int8 arm_toggle_speed_cmd~%int8 robot_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurretControl)))
  "Returns full string definition for message of type 'TurretControl"
  (cl:format cl:nil "# Send commands from the joy_node to the turret_control node~%~%# enum values that define the joystick controls for the robot~%~%# Control the motion of the pan joint~%int8 PAN_CCW = 1~%int8 PAN_CW = 2~%~%# Control the motion of the tilt joint~%int8 TILT_CCW = 3~%int8 TILT_CW = 4~%~%# Control the speed that the robot arm moves~%int8 ARM_LOW_SPEED = 5~%int8 ARM_HIGH_SPEED = 6~%~%# Quickly toggle between a fast and slow speed setting~%int8 ARM_COURSE_SPEED = 7~%int8 ARM_FINE_SPEED = 8~%~%# Set robot to specific pose~%int8 HOME_POSE = 9~%~%int8 pan_cmd~%int8 tilt_cmd~%int8 arm_speed_cmd~%int8 arm_toggle_speed_cmd~%int8 robot_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurretControl>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurretControl>))
  "Converts a ROS message object to a list"
  (cl:list 'TurretControl
    (cl:cons ':pan_cmd (pan_cmd msg))
    (cl:cons ':tilt_cmd (tilt_cmd msg))
    (cl:cons ':arm_speed_cmd (arm_speed_cmd msg))
    (cl:cons ':arm_toggle_speed_cmd (arm_toggle_speed_cmd msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
