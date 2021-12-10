; Auto-generated. Do not edit!


(cl:in-package interbotix_joy_control-msg)


;//! \htmlinclude JoyControl.msg.html

(cl:defclass <JoyControl> (roslisp-msg-protocol:ros-message)
  ((waist_cmd
    :reader waist_cmd
    :initarg :waist_cmd
    :type cl:fixnum
    :initform 0)
   (ee_z_cmd
    :reader ee_z_cmd
    :initarg :ee_z_cmd
    :type cl:fixnum
    :initform 0)
   (ee_x_cmd
    :reader ee_x_cmd
    :initarg :ee_x_cmd
    :type cl:fixnum
    :initform 0)
   (wrist_angle_cmd
    :reader wrist_angle_cmd
    :initarg :wrist_angle_cmd
    :type cl:fixnum
    :initform 0)
   (wrist_rotate_cmd
    :reader wrist_rotate_cmd
    :initarg :wrist_rotate_cmd
    :type cl:fixnum
    :initform 0)
   (gripper_cmd
    :reader gripper_cmd
    :initarg :gripper_cmd
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
   (gripper_pwm_cmd
    :reader gripper_pwm_cmd
    :initarg :gripper_pwm_cmd
    :type cl:fixnum
    :initform 0)
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JoyControl (<JoyControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoyControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoyControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_joy_control-msg:<JoyControl> is deprecated: use interbotix_joy_control-msg:JoyControl instead.")))

(cl:ensure-generic-function 'waist_cmd-val :lambda-list '(m))
(cl:defmethod waist_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:waist_cmd-val is deprecated.  Use interbotix_joy_control-msg:waist_cmd instead.")
  (waist_cmd m))

(cl:ensure-generic-function 'ee_z_cmd-val :lambda-list '(m))
(cl:defmethod ee_z_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:ee_z_cmd-val is deprecated.  Use interbotix_joy_control-msg:ee_z_cmd instead.")
  (ee_z_cmd m))

(cl:ensure-generic-function 'ee_x_cmd-val :lambda-list '(m))
(cl:defmethod ee_x_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:ee_x_cmd-val is deprecated.  Use interbotix_joy_control-msg:ee_x_cmd instead.")
  (ee_x_cmd m))

(cl:ensure-generic-function 'wrist_angle_cmd-val :lambda-list '(m))
(cl:defmethod wrist_angle_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:wrist_angle_cmd-val is deprecated.  Use interbotix_joy_control-msg:wrist_angle_cmd instead.")
  (wrist_angle_cmd m))

(cl:ensure-generic-function 'wrist_rotate_cmd-val :lambda-list '(m))
(cl:defmethod wrist_rotate_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:wrist_rotate_cmd-val is deprecated.  Use interbotix_joy_control-msg:wrist_rotate_cmd instead.")
  (wrist_rotate_cmd m))

(cl:ensure-generic-function 'gripper_cmd-val :lambda-list '(m))
(cl:defmethod gripper_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:gripper_cmd-val is deprecated.  Use interbotix_joy_control-msg:gripper_cmd instead.")
  (gripper_cmd m))

(cl:ensure-generic-function 'arm_speed_cmd-val :lambda-list '(m))
(cl:defmethod arm_speed_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:arm_speed_cmd-val is deprecated.  Use interbotix_joy_control-msg:arm_speed_cmd instead.")
  (arm_speed_cmd m))

(cl:ensure-generic-function 'arm_toggle_speed_cmd-val :lambda-list '(m))
(cl:defmethod arm_toggle_speed_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:arm_toggle_speed_cmd-val is deprecated.  Use interbotix_joy_control-msg:arm_toggle_speed_cmd instead.")
  (arm_toggle_speed_cmd m))

(cl:ensure-generic-function 'gripper_pwm_cmd-val :lambda-list '(m))
(cl:defmethod gripper_pwm_cmd-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:gripper_pwm_cmd-val is deprecated.  Use interbotix_joy_control-msg:gripper_pwm_cmd instead.")
  (gripper_pwm_cmd m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <JoyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_joy_control-msg:robot_pose-val is deprecated.  Use interbotix_joy_control-msg:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JoyControl>)))
    "Constants for message type '<JoyControl>"
  '((:WAIST_CCW . 1)
    (:WAIST_CW . 2)
    (:EE_UP . 3)
    (:EE_DOWN . 4)
    (:EE_FORWARD . 5)
    (:EE_BACKWARD . 6)
    (:WRIST_ANGLE_CCW . 7)
    (:WRIST_ANGLE_CW . 8)
    (:WRIST_ROTATE_CCW . 9)
    (:WRIST_ROTATE_CW . 10)
    (:GRIPPER_OPEN . 11)
    (:GRIPPER_CLOSE . 12)
    (:ARM_LOW_SPEED . 13)
    (:ARM_HIGH_SPEED . 14)
    (:ARM_COURSE_SPEED . 15)
    (:ARM_FINE_SPEED . 16)
    (:GRIPPER_LOW_PWM . 17)
    (:GRIPPER_HIGH_PWM . 18)
    (:HOME_POSE . 19)
    (:SLEEP_POSE . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JoyControl)))
    "Constants for message type 'JoyControl"
  '((:WAIST_CCW . 1)
    (:WAIST_CW . 2)
    (:EE_UP . 3)
    (:EE_DOWN . 4)
    (:EE_FORWARD . 5)
    (:EE_BACKWARD . 6)
    (:WRIST_ANGLE_CCW . 7)
    (:WRIST_ANGLE_CW . 8)
    (:WRIST_ROTATE_CCW . 9)
    (:WRIST_ROTATE_CW . 10)
    (:GRIPPER_OPEN . 11)
    (:GRIPPER_CLOSE . 12)
    (:ARM_LOW_SPEED . 13)
    (:ARM_HIGH_SPEED . 14)
    (:ARM_COURSE_SPEED . 15)
    (:ARM_FINE_SPEED . 16)
    (:GRIPPER_LOW_PWM . 17)
    (:GRIPPER_HIGH_PWM . 18)
    (:HOME_POSE . 19)
    (:SLEEP_POSE . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoyControl>) ostream)
  "Serializes a message object of type '<JoyControl>"
  (cl:let* ((signed (cl:slot-value msg 'waist_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_z_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_x_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wrist_angle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wrist_rotate_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gripper_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arm_speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arm_toggle_speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gripper_pwm_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_pose)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoyControl>) istream)
  "Deserializes a message object of type '<JoyControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waist_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_z_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_x_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wrist_angle_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wrist_rotate_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm_toggle_speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_pwm_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_pose) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoyControl>)))
  "Returns string type for a message object of type '<JoyControl>"
  "interbotix_joy_control/JoyControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoyControl)))
  "Returns string type for a message object of type 'JoyControl"
  "interbotix_joy_control/JoyControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoyControl>)))
  "Returns md5sum for a message object of type '<JoyControl>"
  "6ec2643e78211f908d62b7a582965053")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoyControl)))
  "Returns md5sum for a message object of type 'JoyControl"
  "6ec2643e78211f908d62b7a582965053")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoyControl>)))
  "Returns full string definition for message of type '<JoyControl>"
  (cl:format cl:nil "# Send commands from the joy_node to the modern_robotics_ik node~%~%# enum values that define the joystick controls for the robot~%~%# Control the motion of the waist joint~%int8 WAIST_CCW = 1~%int8 WAIST_CW = 2~%~%# Control the motion of the virtual 'ee_arm_link' or end effector using the modern_robotics_ik engine.~%int8 EE_UP = 3~%int8 EE_DOWN = 4~%int8 EE_FORWARD = 5~%int8 EE_BACKWARD = 6~%~%# Control the motion of the wrist_angle joint~%int8 WRIST_ANGLE_CCW = 7~%int8 WRIST_ANGLE_CW = 8~%~%# Control the motion of the wrist_rotate joint~%int8 WRIST_ROTATE_CCW = 9~%int8 WRIST_ROTATE_CW = 10~%~%# Control the actual gripper~%int8 GRIPPER_OPEN = 11~%int8 GRIPPER_CLOSE = 12~%~%# Control the speed that the robot arm moves~%int8 ARM_LOW_SPEED = 13~%int8 ARM_HIGH_SPEED = 14~%~%# Quickly toggle between a fast and slow speed setting~%int8 ARM_COURSE_SPEED = 15~%int8 ARM_FINE_SPEED = 16~%~%# Control the pwm that the gripper is commanded~%int8 GRIPPER_LOW_PWM = 17~%int8 GRIPPER_HIGH_PWM = 18~%~%# Set robot to specific pose~%int8 HOME_POSE = 19~%int8 SLEEP_POSE = 20~%~%int8 waist_cmd~%int8 ee_z_cmd~%int8 ee_x_cmd~%int8 wrist_angle_cmd~%int8 wrist_rotate_cmd~%int8 gripper_cmd~%int8 arm_speed_cmd~%int8 arm_toggle_speed_cmd~%int8 gripper_pwm_cmd~%int8 robot_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoyControl)))
  "Returns full string definition for message of type 'JoyControl"
  (cl:format cl:nil "# Send commands from the joy_node to the modern_robotics_ik node~%~%# enum values that define the joystick controls for the robot~%~%# Control the motion of the waist joint~%int8 WAIST_CCW = 1~%int8 WAIST_CW = 2~%~%# Control the motion of the virtual 'ee_arm_link' or end effector using the modern_robotics_ik engine.~%int8 EE_UP = 3~%int8 EE_DOWN = 4~%int8 EE_FORWARD = 5~%int8 EE_BACKWARD = 6~%~%# Control the motion of the wrist_angle joint~%int8 WRIST_ANGLE_CCW = 7~%int8 WRIST_ANGLE_CW = 8~%~%# Control the motion of the wrist_rotate joint~%int8 WRIST_ROTATE_CCW = 9~%int8 WRIST_ROTATE_CW = 10~%~%# Control the actual gripper~%int8 GRIPPER_OPEN = 11~%int8 GRIPPER_CLOSE = 12~%~%# Control the speed that the robot arm moves~%int8 ARM_LOW_SPEED = 13~%int8 ARM_HIGH_SPEED = 14~%~%# Quickly toggle between a fast and slow speed setting~%int8 ARM_COURSE_SPEED = 15~%int8 ARM_FINE_SPEED = 16~%~%# Control the pwm that the gripper is commanded~%int8 GRIPPER_LOW_PWM = 17~%int8 GRIPPER_HIGH_PWM = 18~%~%# Set robot to specific pose~%int8 HOME_POSE = 19~%int8 SLEEP_POSE = 20~%~%int8 waist_cmd~%int8 ee_z_cmd~%int8 ee_x_cmd~%int8 wrist_angle_cmd~%int8 wrist_rotate_cmd~%int8 gripper_cmd~%int8 arm_speed_cmd~%int8 arm_toggle_speed_cmd~%int8 gripper_pwm_cmd~%int8 robot_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoyControl>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoyControl>))
  "Converts a ROS message object to a list"
  (cl:list 'JoyControl
    (cl:cons ':waist_cmd (waist_cmd msg))
    (cl:cons ':ee_z_cmd (ee_z_cmd msg))
    (cl:cons ':ee_x_cmd (ee_x_cmd msg))
    (cl:cons ':wrist_angle_cmd (wrist_angle_cmd msg))
    (cl:cons ':wrist_rotate_cmd (wrist_rotate_cmd msg))
    (cl:cons ':gripper_cmd (gripper_cmd msg))
    (cl:cons ':arm_speed_cmd (arm_speed_cmd msg))
    (cl:cons ':arm_toggle_speed_cmd (arm_toggle_speed_cmd msg))
    (cl:cons ':gripper_pwm_cmd (gripper_pwm_cmd msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
