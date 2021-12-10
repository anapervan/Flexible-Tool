;; Auto-generated. Do not edit!


(when (boundp 'interbotix_turret_control::TurretControl)
  (if (not (find-package "INTERBOTIX_TURRET_CONTROL"))
    (make-package "INTERBOTIX_TURRET_CONTROL"))
  (shadow 'TurretControl (find-package "INTERBOTIX_TURRET_CONTROL")))
(unless (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL")
  (make-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))

(in-package "ROS")
;;//! \htmlinclude TurretControl.msg.html


(intern "*PAN_CCW*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*PAN_CCW* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*PAN_CCW* 1)
(intern "*PAN_CW*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*PAN_CW* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*PAN_CW* 2)
(intern "*TILT_CCW*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*TILT_CCW* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*TILT_CCW* 3)
(intern "*TILT_CW*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*TILT_CW* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*TILT_CW* 4)
(intern "*ARM_LOW_SPEED*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*ARM_LOW_SPEED* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*ARM_LOW_SPEED* 5)
(intern "*ARM_HIGH_SPEED*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*ARM_HIGH_SPEED* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*ARM_HIGH_SPEED* 6)
(intern "*ARM_COURSE_SPEED*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*ARM_COURSE_SPEED* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*ARM_COURSE_SPEED* 7)
(intern "*ARM_FINE_SPEED*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*ARM_FINE_SPEED* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*ARM_FINE_SPEED* 8)
(intern "*HOME_POSE*" (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(shadow '*HOME_POSE* (find-package "INTERBOTIX_TURRET_CONTROL::TURRETCONTROL"))
(defconstant interbotix_turret_control::TurretControl::*HOME_POSE* 9)

(defun interbotix_turret_control::TurretControl-to-symbol (const)
  (cond
        ((= const 1) 'interbotix_turret_control::TurretControl::*PAN_CCW*)
        ((= const 2) 'interbotix_turret_control::TurretControl::*PAN_CW*)
        ((= const 3) 'interbotix_turret_control::TurretControl::*TILT_CCW*)
        ((= const 4) 'interbotix_turret_control::TurretControl::*TILT_CW*)
        ((= const 5) 'interbotix_turret_control::TurretControl::*ARM_LOW_SPEED*)
        ((= const 6) 'interbotix_turret_control::TurretControl::*ARM_HIGH_SPEED*)
        ((= const 7) 'interbotix_turret_control::TurretControl::*ARM_COURSE_SPEED*)
        ((= const 8) 'interbotix_turret_control::TurretControl::*ARM_FINE_SPEED*)
        ((= const 9) 'interbotix_turret_control::TurretControl::*HOME_POSE*)
        (t nil)))

(defclass interbotix_turret_control::TurretControl
  :super ros::object
  :slots (_pan_cmd _tilt_cmd _arm_speed_cmd _arm_toggle_speed_cmd _robot_pose ))

(defmethod interbotix_turret_control::TurretControl
  (:init
   (&key
    ((:pan_cmd __pan_cmd) 0)
    ((:tilt_cmd __tilt_cmd) 0)
    ((:arm_speed_cmd __arm_speed_cmd) 0)
    ((:arm_toggle_speed_cmd __arm_toggle_speed_cmd) 0)
    ((:robot_pose __robot_pose) 0)
    )
   (send-super :init)
   (setq _pan_cmd (round __pan_cmd))
   (setq _tilt_cmd (round __tilt_cmd))
   (setq _arm_speed_cmd (round __arm_speed_cmd))
   (setq _arm_toggle_speed_cmd (round __arm_toggle_speed_cmd))
   (setq _robot_pose (round __robot_pose))
   self)
  (:pan_cmd
   (&optional __pan_cmd)
   (if __pan_cmd (setq _pan_cmd __pan_cmd)) _pan_cmd)
  (:tilt_cmd
   (&optional __tilt_cmd)
   (if __tilt_cmd (setq _tilt_cmd __tilt_cmd)) _tilt_cmd)
  (:arm_speed_cmd
   (&optional __arm_speed_cmd)
   (if __arm_speed_cmd (setq _arm_speed_cmd __arm_speed_cmd)) _arm_speed_cmd)
  (:arm_toggle_speed_cmd
   (&optional __arm_toggle_speed_cmd)
   (if __arm_toggle_speed_cmd (setq _arm_toggle_speed_cmd __arm_toggle_speed_cmd)) _arm_toggle_speed_cmd)
  (:robot_pose
   (&optional __robot_pose)
   (if __robot_pose (setq _robot_pose __robot_pose)) _robot_pose)
  (:serialization-length
   ()
   (+
    ;; int8 _pan_cmd
    1
    ;; int8 _tilt_cmd
    1
    ;; int8 _arm_speed_cmd
    1
    ;; int8 _arm_toggle_speed_cmd
    1
    ;; int8 _robot_pose
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pan_cmd
       (write-byte _pan_cmd s)
     ;; int8 _tilt_cmd
       (write-byte _tilt_cmd s)
     ;; int8 _arm_speed_cmd
       (write-byte _arm_speed_cmd s)
     ;; int8 _arm_toggle_speed_cmd
       (write-byte _arm_toggle_speed_cmd s)
     ;; int8 _robot_pose
       (write-byte _robot_pose s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pan_cmd
     (setq _pan_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pan_cmd 127) (setq _pan_cmd (- _pan_cmd 256)))
   ;; int8 _tilt_cmd
     (setq _tilt_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_cmd 127) (setq _tilt_cmd (- _tilt_cmd 256)))
   ;; int8 _arm_speed_cmd
     (setq _arm_speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_speed_cmd 127) (setq _arm_speed_cmd (- _arm_speed_cmd 256)))
   ;; int8 _arm_toggle_speed_cmd
     (setq _arm_toggle_speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_toggle_speed_cmd 127) (setq _arm_toggle_speed_cmd (- _arm_toggle_speed_cmd 256)))
   ;; int8 _robot_pose
     (setq _robot_pose (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_pose 127) (setq _robot_pose (- _robot_pose 256)))
   ;;
   self)
  )

(setf (get interbotix_turret_control::TurretControl :md5sum-) "3e39c9e14721edfb6fd43b3f34f67c7c")
(setf (get interbotix_turret_control::TurretControl :datatype-) "interbotix_turret_control/TurretControl")
(setf (get interbotix_turret_control::TurretControl :definition-)
      "# Send commands from the joy_node to the turret_control node

# enum values that define the joystick controls for the robot

# Control the motion of the pan joint
int8 PAN_CCW = 1
int8 PAN_CW = 2

# Control the motion of the tilt joint
int8 TILT_CCW = 3
int8 TILT_CW = 4

# Control the speed that the robot arm moves
int8 ARM_LOW_SPEED = 5
int8 ARM_HIGH_SPEED = 6

# Quickly toggle between a fast and slow speed setting
int8 ARM_COURSE_SPEED = 7
int8 ARM_FINE_SPEED = 8

# Set robot to specific pose
int8 HOME_POSE = 9

int8 pan_cmd
int8 tilt_cmd
int8 arm_speed_cmd
int8 arm_toggle_speed_cmd
int8 robot_pose

")



(provide :interbotix_turret_control/TurretControl "3e39c9e14721edfb6fd43b3f34f67c7c")


