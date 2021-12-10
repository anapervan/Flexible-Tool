;; Auto-generated. Do not edit!


(when (boundp 'interbotix_sdk::OperatingModes)
  (if (not (find-package "INTERBOTIX_SDK"))
    (make-package "INTERBOTIX_SDK"))
  (shadow 'OperatingModes (find-package "INTERBOTIX_SDK")))
(unless (find-package "INTERBOTIX_SDK::OPERATINGMODES")
  (make-package "INTERBOTIX_SDK::OPERATINGMODES"))
(unless (find-package "INTERBOTIX_SDK::OPERATINGMODESREQUEST")
  (make-package "INTERBOTIX_SDK::OPERATINGMODESREQUEST"))
(unless (find-package "INTERBOTIX_SDK::OPERATINGMODESRESPONSE")
  (make-package "INTERBOTIX_SDK::OPERATINGMODESRESPONSE"))

(in-package "ROS")





(defclass interbotix_sdk::OperatingModesRequest
  :super ros::object
  :slots (_arm_mode _use_custom_arm_profiles _arm_profile_velocity _arm_profile_acceleration _gripper_mode _use_custom_gripper_profiles _gripper_profile_velocity _gripper_profile_acceleration ))

(defmethod interbotix_sdk::OperatingModesRequest
  (:init
   (&key
    ((:arm_mode __arm_mode) "")
    ((:use_custom_arm_profiles __use_custom_arm_profiles) nil)
    ((:arm_profile_velocity __arm_profile_velocity) 0)
    ((:arm_profile_acceleration __arm_profile_acceleration) 0)
    ((:gripper_mode __gripper_mode) "")
    ((:use_custom_gripper_profiles __use_custom_gripper_profiles) nil)
    ((:gripper_profile_velocity __gripper_profile_velocity) 0)
    ((:gripper_profile_acceleration __gripper_profile_acceleration) 0)
    )
   (send-super :init)
   (setq _arm_mode (string __arm_mode))
   (setq _use_custom_arm_profiles __use_custom_arm_profiles)
   (setq _arm_profile_velocity (round __arm_profile_velocity))
   (setq _arm_profile_acceleration (round __arm_profile_acceleration))
   (setq _gripper_mode (string __gripper_mode))
   (setq _use_custom_gripper_profiles __use_custom_gripper_profiles)
   (setq _gripper_profile_velocity (round __gripper_profile_velocity))
   (setq _gripper_profile_acceleration (round __gripper_profile_acceleration))
   self)
  (:arm_mode
   (&optional __arm_mode)
   (if __arm_mode (setq _arm_mode __arm_mode)) _arm_mode)
  (:use_custom_arm_profiles
   (&optional (__use_custom_arm_profiles :null))
   (if (not (eq __use_custom_arm_profiles :null)) (setq _use_custom_arm_profiles __use_custom_arm_profiles)) _use_custom_arm_profiles)
  (:arm_profile_velocity
   (&optional __arm_profile_velocity)
   (if __arm_profile_velocity (setq _arm_profile_velocity __arm_profile_velocity)) _arm_profile_velocity)
  (:arm_profile_acceleration
   (&optional __arm_profile_acceleration)
   (if __arm_profile_acceleration (setq _arm_profile_acceleration __arm_profile_acceleration)) _arm_profile_acceleration)
  (:gripper_mode
   (&optional __gripper_mode)
   (if __gripper_mode (setq _gripper_mode __gripper_mode)) _gripper_mode)
  (:use_custom_gripper_profiles
   (&optional (__use_custom_gripper_profiles :null))
   (if (not (eq __use_custom_gripper_profiles :null)) (setq _use_custom_gripper_profiles __use_custom_gripper_profiles)) _use_custom_gripper_profiles)
  (:gripper_profile_velocity
   (&optional __gripper_profile_velocity)
   (if __gripper_profile_velocity (setq _gripper_profile_velocity __gripper_profile_velocity)) _gripper_profile_velocity)
  (:gripper_profile_acceleration
   (&optional __gripper_profile_acceleration)
   (if __gripper_profile_acceleration (setq _gripper_profile_acceleration __gripper_profile_acceleration)) _gripper_profile_acceleration)
  (:serialization-length
   ()
   (+
    ;; string _arm_mode
    4 (length _arm_mode)
    ;; bool _use_custom_arm_profiles
    1
    ;; int32 _arm_profile_velocity
    4
    ;; int32 _arm_profile_acceleration
    4
    ;; string _gripper_mode
    4 (length _gripper_mode)
    ;; bool _use_custom_gripper_profiles
    1
    ;; int32 _gripper_profile_velocity
    4
    ;; int32 _gripper_profile_acceleration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _arm_mode
       (write-long (length _arm_mode) s) (princ _arm_mode s)
     ;; bool _use_custom_arm_profiles
       (if _use_custom_arm_profiles (write-byte -1 s) (write-byte 0 s))
     ;; int32 _arm_profile_velocity
       (write-long _arm_profile_velocity s)
     ;; int32 _arm_profile_acceleration
       (write-long _arm_profile_acceleration s)
     ;; string _gripper_mode
       (write-long (length _gripper_mode) s) (princ _gripper_mode s)
     ;; bool _use_custom_gripper_profiles
       (if _use_custom_gripper_profiles (write-byte -1 s) (write-byte 0 s))
     ;; int32 _gripper_profile_velocity
       (write-long _gripper_profile_velocity s)
     ;; int32 _gripper_profile_acceleration
       (write-long _gripper_profile_acceleration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _arm_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arm_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _use_custom_arm_profiles
     (setq _use_custom_arm_profiles (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _arm_profile_velocity
     (setq _arm_profile_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arm_profile_acceleration
     (setq _arm_profile_acceleration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _gripper_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gripper_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _use_custom_gripper_profiles
     (setq _use_custom_gripper_profiles (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _gripper_profile_velocity
     (setq _gripper_profile_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gripper_profile_acceleration
     (setq _gripper_profile_acceleration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass interbotix_sdk::OperatingModesResponse
  :super ros::object
  :slots ())

(defmethod interbotix_sdk::OperatingModesResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass interbotix_sdk::OperatingModes
  :super ros::object
  :slots ())

(setf (get interbotix_sdk::OperatingModes :md5sum-) "7f6f1b135f03cc8740935c2565835f76")
(setf (get interbotix_sdk::OperatingModes :datatype-) "interbotix_sdk/OperatingModes")
(setf (get interbotix_sdk::OperatingModes :request) interbotix_sdk::OperatingModesRequest)
(setf (get interbotix_sdk::OperatingModes :response) interbotix_sdk::OperatingModesResponse)

(defmethod interbotix_sdk::OperatingModesRequest
  (:response () (instance interbotix_sdk::OperatingModesResponse :init)))

(setf (get interbotix_sdk::OperatingModesRequest :md5sum-) "7f6f1b135f03cc8740935c2565835f76")
(setf (get interbotix_sdk::OperatingModesRequest :datatype-) "interbotix_sdk/OperatingModesRequest")
(setf (get interbotix_sdk::OperatingModesRequest :definition-)
      "# Set the operating modes for the arm and/or gripper
#
# There are 5 valid operating modes for the arm. They are...
#   \"none\" - arm motors will not respond to any joint command
#   \"position\" - arm motors will expect only position commands
#   \"velocity\" - arm motors will expect only velocity commands
#   \"current\" - arm motors will expect only current commands
#   \"pwm\" - arm motors will expect only pwm commands
#
# The gripper can also be set to \"ext_position\". This allows the gripper to do
# multiple rotations instead of just one. It should only be used if you are using
# a custom gripper capable of doing more than one rotation.
#
# For \"position\" control, profile_velocity sets the max speed of each joint while
# profile_acceleration sets the max acceleration. Please reference the motor datasheet
# (just click a motor at http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/)
# for conversion factors. Values can be between 0 and 32,767. If setting custom profiles,
# make sure to set 'use_custom_x_profiles' to true.
#
# For \"velocity\" control, only profile_acceleration is used.
#
# The velocity and acceleration profiles are not used in the \"current\" and \"pwm\" modes.
#
# Note that if the arm or gripper mode options are not set, the service will ignore
# them. This is useful if you only want to change one operating mode and not the other.

string arm_mode
bool use_custom_arm_profiles
int32 arm_profile_velocity
int32 arm_profile_acceleration

string gripper_mode
bool use_custom_gripper_profiles
int32 gripper_profile_velocity
int32 gripper_profile_acceleration
---

")

(setf (get interbotix_sdk::OperatingModesResponse :md5sum-) "7f6f1b135f03cc8740935c2565835f76")
(setf (get interbotix_sdk::OperatingModesResponse :datatype-) "interbotix_sdk/OperatingModesResponse")
(setf (get interbotix_sdk::OperatingModesResponse :definition-)
      "# Set the operating modes for the arm and/or gripper
#
# There are 5 valid operating modes for the arm. They are...
#   \"none\" - arm motors will not respond to any joint command
#   \"position\" - arm motors will expect only position commands
#   \"velocity\" - arm motors will expect only velocity commands
#   \"current\" - arm motors will expect only current commands
#   \"pwm\" - arm motors will expect only pwm commands
#
# The gripper can also be set to \"ext_position\". This allows the gripper to do
# multiple rotations instead of just one. It should only be used if you are using
# a custom gripper capable of doing more than one rotation.
#
# For \"position\" control, profile_velocity sets the max speed of each joint while
# profile_acceleration sets the max acceleration. Please reference the motor datasheet
# (just click a motor at http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/)
# for conversion factors. Values can be between 0 and 32,767. If setting custom profiles,
# make sure to set 'use_custom_x_profiles' to true.
#
# For \"velocity\" control, only profile_acceleration is used.
#
# The velocity and acceleration profiles are not used in the \"current\" and \"pwm\" modes.
#
# Note that if the arm or gripper mode options are not set, the service will ignore
# them. This is useful if you only want to change one operating mode and not the other.

string arm_mode
bool use_custom_arm_profiles
int32 arm_profile_velocity
int32 arm_profile_acceleration

string gripper_mode
bool use_custom_gripper_profiles
int32 gripper_profile_velocity
int32 gripper_profile_acceleration
---

")



(provide :interbotix_sdk/OperatingModes "7f6f1b135f03cc8740935c2565835f76")


