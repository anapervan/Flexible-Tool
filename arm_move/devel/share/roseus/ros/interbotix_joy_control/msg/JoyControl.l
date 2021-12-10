;; Auto-generated. Do not edit!


(when (boundp 'interbotix_joy_control::JoyControl)
  (if (not (find-package "INTERBOTIX_JOY_CONTROL"))
    (make-package "INTERBOTIX_JOY_CONTROL"))
  (shadow 'JoyControl (find-package "INTERBOTIX_JOY_CONTROL")))
(unless (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL")
  (make-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))

(in-package "ROS")
;;//! \htmlinclude JoyControl.msg.html


(intern "*WAIST_CCW*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*WAIST_CCW* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*WAIST_CCW* 1)
(intern "*WAIST_CW*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*WAIST_CW* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*WAIST_CW* 2)
(intern "*EE_UP*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*EE_UP* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*EE_UP* 3)
(intern "*EE_DOWN*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*EE_DOWN* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*EE_DOWN* 4)
(intern "*EE_FORWARD*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*EE_FORWARD* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*EE_FORWARD* 5)
(intern "*EE_BACKWARD*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*EE_BACKWARD* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*EE_BACKWARD* 6)
(intern "*WRIST_ANGLE_CCW*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*WRIST_ANGLE_CCW* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*WRIST_ANGLE_CCW* 7)
(intern "*WRIST_ANGLE_CW*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*WRIST_ANGLE_CW* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*WRIST_ANGLE_CW* 8)
(intern "*WRIST_ROTATE_CCW*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*WRIST_ROTATE_CCW* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*WRIST_ROTATE_CCW* 9)
(intern "*WRIST_ROTATE_CW*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*WRIST_ROTATE_CW* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*WRIST_ROTATE_CW* 10)
(intern "*GRIPPER_OPEN*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*GRIPPER_OPEN* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*GRIPPER_OPEN* 11)
(intern "*GRIPPER_CLOSE*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*GRIPPER_CLOSE* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*GRIPPER_CLOSE* 12)
(intern "*ARM_LOW_SPEED*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*ARM_LOW_SPEED* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*ARM_LOW_SPEED* 13)
(intern "*ARM_HIGH_SPEED*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*ARM_HIGH_SPEED* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*ARM_HIGH_SPEED* 14)
(intern "*ARM_COURSE_SPEED*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*ARM_COURSE_SPEED* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*ARM_COURSE_SPEED* 15)
(intern "*ARM_FINE_SPEED*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*ARM_FINE_SPEED* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*ARM_FINE_SPEED* 16)
(intern "*GRIPPER_LOW_PWM*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*GRIPPER_LOW_PWM* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*GRIPPER_LOW_PWM* 17)
(intern "*GRIPPER_HIGH_PWM*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*GRIPPER_HIGH_PWM* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*GRIPPER_HIGH_PWM* 18)
(intern "*HOME_POSE*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*HOME_POSE* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*HOME_POSE* 19)
(intern "*SLEEP_POSE*" (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(shadow '*SLEEP_POSE* (find-package "INTERBOTIX_JOY_CONTROL::JOYCONTROL"))
(defconstant interbotix_joy_control::JoyControl::*SLEEP_POSE* 20)

(defun interbotix_joy_control::JoyControl-to-symbol (const)
  (cond
        ((= const 1) 'interbotix_joy_control::JoyControl::*WAIST_CCW*)
        ((= const 2) 'interbotix_joy_control::JoyControl::*WAIST_CW*)
        ((= const 3) 'interbotix_joy_control::JoyControl::*EE_UP*)
        ((= const 4) 'interbotix_joy_control::JoyControl::*EE_DOWN*)
        ((= const 5) 'interbotix_joy_control::JoyControl::*EE_FORWARD*)
        ((= const 6) 'interbotix_joy_control::JoyControl::*EE_BACKWARD*)
        ((= const 7) 'interbotix_joy_control::JoyControl::*WRIST_ANGLE_CCW*)
        ((= const 8) 'interbotix_joy_control::JoyControl::*WRIST_ANGLE_CW*)
        ((= const 9) 'interbotix_joy_control::JoyControl::*WRIST_ROTATE_CCW*)
        ((= const 10) 'interbotix_joy_control::JoyControl::*WRIST_ROTATE_CW*)
        ((= const 11) 'interbotix_joy_control::JoyControl::*GRIPPER_OPEN*)
        ((= const 12) 'interbotix_joy_control::JoyControl::*GRIPPER_CLOSE*)
        ((= const 13) 'interbotix_joy_control::JoyControl::*ARM_LOW_SPEED*)
        ((= const 14) 'interbotix_joy_control::JoyControl::*ARM_HIGH_SPEED*)
        ((= const 15) 'interbotix_joy_control::JoyControl::*ARM_COURSE_SPEED*)
        ((= const 16) 'interbotix_joy_control::JoyControl::*ARM_FINE_SPEED*)
        ((= const 17) 'interbotix_joy_control::JoyControl::*GRIPPER_LOW_PWM*)
        ((= const 18) 'interbotix_joy_control::JoyControl::*GRIPPER_HIGH_PWM*)
        ((= const 19) 'interbotix_joy_control::JoyControl::*HOME_POSE*)
        ((= const 20) 'interbotix_joy_control::JoyControl::*SLEEP_POSE*)
        (t nil)))

(defclass interbotix_joy_control::JoyControl
  :super ros::object
  :slots (_waist_cmd _ee_z_cmd _ee_x_cmd _wrist_angle_cmd _wrist_rotate_cmd _gripper_cmd _arm_speed_cmd _arm_toggle_speed_cmd _gripper_pwm_cmd _robot_pose ))

(defmethod interbotix_joy_control::JoyControl
  (:init
   (&key
    ((:waist_cmd __waist_cmd) 0)
    ((:ee_z_cmd __ee_z_cmd) 0)
    ((:ee_x_cmd __ee_x_cmd) 0)
    ((:wrist_angle_cmd __wrist_angle_cmd) 0)
    ((:wrist_rotate_cmd __wrist_rotate_cmd) 0)
    ((:gripper_cmd __gripper_cmd) 0)
    ((:arm_speed_cmd __arm_speed_cmd) 0)
    ((:arm_toggle_speed_cmd __arm_toggle_speed_cmd) 0)
    ((:gripper_pwm_cmd __gripper_pwm_cmd) 0)
    ((:robot_pose __robot_pose) 0)
    )
   (send-super :init)
   (setq _waist_cmd (round __waist_cmd))
   (setq _ee_z_cmd (round __ee_z_cmd))
   (setq _ee_x_cmd (round __ee_x_cmd))
   (setq _wrist_angle_cmd (round __wrist_angle_cmd))
   (setq _wrist_rotate_cmd (round __wrist_rotate_cmd))
   (setq _gripper_cmd (round __gripper_cmd))
   (setq _arm_speed_cmd (round __arm_speed_cmd))
   (setq _arm_toggle_speed_cmd (round __arm_toggle_speed_cmd))
   (setq _gripper_pwm_cmd (round __gripper_pwm_cmd))
   (setq _robot_pose (round __robot_pose))
   self)
  (:waist_cmd
   (&optional __waist_cmd)
   (if __waist_cmd (setq _waist_cmd __waist_cmd)) _waist_cmd)
  (:ee_z_cmd
   (&optional __ee_z_cmd)
   (if __ee_z_cmd (setq _ee_z_cmd __ee_z_cmd)) _ee_z_cmd)
  (:ee_x_cmd
   (&optional __ee_x_cmd)
   (if __ee_x_cmd (setq _ee_x_cmd __ee_x_cmd)) _ee_x_cmd)
  (:wrist_angle_cmd
   (&optional __wrist_angle_cmd)
   (if __wrist_angle_cmd (setq _wrist_angle_cmd __wrist_angle_cmd)) _wrist_angle_cmd)
  (:wrist_rotate_cmd
   (&optional __wrist_rotate_cmd)
   (if __wrist_rotate_cmd (setq _wrist_rotate_cmd __wrist_rotate_cmd)) _wrist_rotate_cmd)
  (:gripper_cmd
   (&optional __gripper_cmd)
   (if __gripper_cmd (setq _gripper_cmd __gripper_cmd)) _gripper_cmd)
  (:arm_speed_cmd
   (&optional __arm_speed_cmd)
   (if __arm_speed_cmd (setq _arm_speed_cmd __arm_speed_cmd)) _arm_speed_cmd)
  (:arm_toggle_speed_cmd
   (&optional __arm_toggle_speed_cmd)
   (if __arm_toggle_speed_cmd (setq _arm_toggle_speed_cmd __arm_toggle_speed_cmd)) _arm_toggle_speed_cmd)
  (:gripper_pwm_cmd
   (&optional __gripper_pwm_cmd)
   (if __gripper_pwm_cmd (setq _gripper_pwm_cmd __gripper_pwm_cmd)) _gripper_pwm_cmd)
  (:robot_pose
   (&optional __robot_pose)
   (if __robot_pose (setq _robot_pose __robot_pose)) _robot_pose)
  (:serialization-length
   ()
   (+
    ;; int8 _waist_cmd
    1
    ;; int8 _ee_z_cmd
    1
    ;; int8 _ee_x_cmd
    1
    ;; int8 _wrist_angle_cmd
    1
    ;; int8 _wrist_rotate_cmd
    1
    ;; int8 _gripper_cmd
    1
    ;; int8 _arm_speed_cmd
    1
    ;; int8 _arm_toggle_speed_cmd
    1
    ;; int8 _gripper_pwm_cmd
    1
    ;; int8 _robot_pose
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _waist_cmd
       (write-byte _waist_cmd s)
     ;; int8 _ee_z_cmd
       (write-byte _ee_z_cmd s)
     ;; int8 _ee_x_cmd
       (write-byte _ee_x_cmd s)
     ;; int8 _wrist_angle_cmd
       (write-byte _wrist_angle_cmd s)
     ;; int8 _wrist_rotate_cmd
       (write-byte _wrist_rotate_cmd s)
     ;; int8 _gripper_cmd
       (write-byte _gripper_cmd s)
     ;; int8 _arm_speed_cmd
       (write-byte _arm_speed_cmd s)
     ;; int8 _arm_toggle_speed_cmd
       (write-byte _arm_toggle_speed_cmd s)
     ;; int8 _gripper_pwm_cmd
       (write-byte _gripper_pwm_cmd s)
     ;; int8 _robot_pose
       (write-byte _robot_pose s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _waist_cmd
     (setq _waist_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _waist_cmd 127) (setq _waist_cmd (- _waist_cmd 256)))
   ;; int8 _ee_z_cmd
     (setq _ee_z_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_z_cmd 127) (setq _ee_z_cmd (- _ee_z_cmd 256)))
   ;; int8 _ee_x_cmd
     (setq _ee_x_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_x_cmd 127) (setq _ee_x_cmd (- _ee_x_cmd 256)))
   ;; int8 _wrist_angle_cmd
     (setq _wrist_angle_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _wrist_angle_cmd 127) (setq _wrist_angle_cmd (- _wrist_angle_cmd 256)))
   ;; int8 _wrist_rotate_cmd
     (setq _wrist_rotate_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _wrist_rotate_cmd 127) (setq _wrist_rotate_cmd (- _wrist_rotate_cmd 256)))
   ;; int8 _gripper_cmd
     (setq _gripper_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gripper_cmd 127) (setq _gripper_cmd (- _gripper_cmd 256)))
   ;; int8 _arm_speed_cmd
     (setq _arm_speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_speed_cmd 127) (setq _arm_speed_cmd (- _arm_speed_cmd 256)))
   ;; int8 _arm_toggle_speed_cmd
     (setq _arm_toggle_speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_toggle_speed_cmd 127) (setq _arm_toggle_speed_cmd (- _arm_toggle_speed_cmd 256)))
   ;; int8 _gripper_pwm_cmd
     (setq _gripper_pwm_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gripper_pwm_cmd 127) (setq _gripper_pwm_cmd (- _gripper_pwm_cmd 256)))
   ;; int8 _robot_pose
     (setq _robot_pose (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_pose 127) (setq _robot_pose (- _robot_pose 256)))
   ;;
   self)
  )

(setf (get interbotix_joy_control::JoyControl :md5sum-) "6ec2643e78211f908d62b7a582965053")
(setf (get interbotix_joy_control::JoyControl :datatype-) "interbotix_joy_control/JoyControl")
(setf (get interbotix_joy_control::JoyControl :definition-)
      "# Send commands from the joy_node to the modern_robotics_ik node

# enum values that define the joystick controls for the robot

# Control the motion of the waist joint
int8 WAIST_CCW = 1
int8 WAIST_CW = 2

# Control the motion of the virtual 'ee_arm_link' or end effector using the modern_robotics_ik engine.
int8 EE_UP = 3
int8 EE_DOWN = 4
int8 EE_FORWARD = 5
int8 EE_BACKWARD = 6

# Control the motion of the wrist_angle joint
int8 WRIST_ANGLE_CCW = 7
int8 WRIST_ANGLE_CW = 8

# Control the motion of the wrist_rotate joint
int8 WRIST_ROTATE_CCW = 9
int8 WRIST_ROTATE_CW = 10

# Control the actual gripper
int8 GRIPPER_OPEN = 11
int8 GRIPPER_CLOSE = 12

# Control the speed that the robot arm moves
int8 ARM_LOW_SPEED = 13
int8 ARM_HIGH_SPEED = 14

# Quickly toggle between a fast and slow speed setting
int8 ARM_COURSE_SPEED = 15
int8 ARM_FINE_SPEED = 16

# Control the pwm that the gripper is commanded
int8 GRIPPER_LOW_PWM = 17
int8 GRIPPER_HIGH_PWM = 18

# Set robot to specific pose
int8 HOME_POSE = 19
int8 SLEEP_POSE = 20

int8 waist_cmd
int8 ee_z_cmd
int8 ee_x_cmd
int8 wrist_angle_cmd
int8 wrist_rotate_cmd
int8 gripper_cmd
int8 arm_speed_cmd
int8 arm_toggle_speed_cmd
int8 gripper_pwm_cmd
int8 robot_pose

")



(provide :interbotix_joy_control/JoyControl "6ec2643e78211f908d62b7a582965053")


