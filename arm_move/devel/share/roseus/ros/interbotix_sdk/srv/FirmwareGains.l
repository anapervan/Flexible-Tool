;; Auto-generated. Do not edit!


(when (boundp 'interbotix_sdk::FirmwareGains)
  (if (not (find-package "INTERBOTIX_SDK"))
    (make-package "INTERBOTIX_SDK"))
  (shadow 'FirmwareGains (find-package "INTERBOTIX_SDK")))
(unless (find-package "INTERBOTIX_SDK::FIRMWAREGAINS")
  (make-package "INTERBOTIX_SDK::FIRMWAREGAINS"))
(unless (find-package "INTERBOTIX_SDK::FIRMWAREGAINSREQUEST")
  (make-package "INTERBOTIX_SDK::FIRMWAREGAINSREQUEST"))
(unless (find-package "INTERBOTIX_SDK::FIRMWAREGAINSRESPONSE")
  (make-package "INTERBOTIX_SDK::FIRMWAREGAINSRESPONSE"))

(in-package "ROS")





(defclass interbotix_sdk::FirmwareGainsRequest
  :super ros::object
  :slots (_joint_id _Kp_pos _Ki_pos _Kd_pos _K1 _K2 _Kp_vel _Ki_vel ))

(defmethod interbotix_sdk::FirmwareGainsRequest
  (:init
   (&key
    ((:joint_id __joint_id) 0)
    ((:Kp_pos __Kp_pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Ki_pos __Ki_pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Kd_pos __Kd_pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:K1 __K1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:K2 __K2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Kp_vel __Kp_vel) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Ki_vel __Ki_vel) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _joint_id (round __joint_id))
   (setq _Kp_pos __Kp_pos)
   (setq _Ki_pos __Ki_pos)
   (setq _Kd_pos __Kd_pos)
   (setq _K1 __K1)
   (setq _K2 __K2)
   (setq _Kp_vel __Kp_vel)
   (setq _Ki_vel __Ki_vel)
   self)
  (:joint_id
   (&optional __joint_id)
   (if __joint_id (setq _joint_id __joint_id)) _joint_id)
  (:Kp_pos
   (&optional __Kp_pos)
   (if __Kp_pos (setq _Kp_pos __Kp_pos)) _Kp_pos)
  (:Ki_pos
   (&optional __Ki_pos)
   (if __Ki_pos (setq _Ki_pos __Ki_pos)) _Ki_pos)
  (:Kd_pos
   (&optional __Kd_pos)
   (if __Kd_pos (setq _Kd_pos __Kd_pos)) _Kd_pos)
  (:K1
   (&optional __K1)
   (if __K1 (setq _K1 __K1)) _K1)
  (:K2
   (&optional __K2)
   (if __K2 (setq _K2 __K2)) _K2)
  (:Kp_vel
   (&optional __Kp_vel)
   (if __Kp_vel (setq _Kp_vel __Kp_vel)) _Kp_vel)
  (:Ki_vel
   (&optional __Ki_vel)
   (if __Ki_vel (setq _Ki_vel __Ki_vel)) _Ki_vel)
  (:serialization-length
   ()
   (+
    ;; int8 _joint_id
    1
    ;; int32[] _Kp_pos
    (* 4    (length _Kp_pos)) 4
    ;; int32[] _Ki_pos
    (* 4    (length _Ki_pos)) 4
    ;; int32[] _Kd_pos
    (* 4    (length _Kd_pos)) 4
    ;; int32[] _K1
    (* 4    (length _K1)) 4
    ;; int32[] _K2
    (* 4    (length _K2)) 4
    ;; int32[] _Kp_vel
    (* 4    (length _Kp_vel)) 4
    ;; int32[] _Ki_vel
    (* 4    (length _Ki_vel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _joint_id
       (write-byte _joint_id s)
     ;; int32[] _Kp_pos
     (write-long (length _Kp_pos) s)
     (dotimes (i (length _Kp_pos))
       (write-long (elt _Kp_pos i) s)
       )
     ;; int32[] _Ki_pos
     (write-long (length _Ki_pos) s)
     (dotimes (i (length _Ki_pos))
       (write-long (elt _Ki_pos i) s)
       )
     ;; int32[] _Kd_pos
     (write-long (length _Kd_pos) s)
     (dotimes (i (length _Kd_pos))
       (write-long (elt _Kd_pos i) s)
       )
     ;; int32[] _K1
     (write-long (length _K1) s)
     (dotimes (i (length _K1))
       (write-long (elt _K1 i) s)
       )
     ;; int32[] _K2
     (write-long (length _K2) s)
     (dotimes (i (length _K2))
       (write-long (elt _K2 i) s)
       )
     ;; int32[] _Kp_vel
     (write-long (length _Kp_vel) s)
     (dotimes (i (length _Kp_vel))
       (write-long (elt _Kp_vel i) s)
       )
     ;; int32[] _Ki_vel
     (write-long (length _Ki_vel) s)
     (dotimes (i (length _Ki_vel))
       (write-long (elt _Ki_vel i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _joint_id
     (setq _joint_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _joint_id 127) (setq _joint_id (- _joint_id 256)))
   ;; int32[] _Kp_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Kp_pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Kp_pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _Ki_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Ki_pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Ki_pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _Kd_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Kd_pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Kd_pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _K1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _K1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _K1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _K2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _K2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _K2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _Kp_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Kp_vel (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Kp_vel i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _Ki_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Ki_vel (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Ki_vel i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass interbotix_sdk::FirmwareGainsResponse
  :super ros::object
  :slots ())

(defmethod interbotix_sdk::FirmwareGainsResponse
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

(defclass interbotix_sdk::FirmwareGains
  :super ros::object
  :slots ())

(setf (get interbotix_sdk::FirmwareGains :md5sum-) "1a3c17ff4352d3a3bf5d6c64d4bd58a6")
(setf (get interbotix_sdk::FirmwareGains :datatype-) "interbotix_sdk/FirmwareGains")
(setf (get interbotix_sdk::FirmwareGains :request) interbotix_sdk::FirmwareGainsRequest)
(setf (get interbotix_sdk::FirmwareGains :response) interbotix_sdk::FirmwareGainsResponse)

(defmethod interbotix_sdk::FirmwareGainsRequest
  (:response () (instance interbotix_sdk::FirmwareGainsResponse :init)))

(setf (get interbotix_sdk::FirmwareGainsRequest :md5sum-) "1a3c17ff4352d3a3bf5d6c64d4bd58a6")
(setf (get interbotix_sdk::FirmwareGainsRequest :datatype-) "interbotix_sdk/FirmwareGainsRequest")
(setf (get interbotix_sdk::FirmwareGainsRequest :definition-)
      "# Send Position PID and/or Velocity PI gains to the firmware
#
# To get familiar with the register values, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.
#
# Set 'joint_id' to 0 if you want to specify pid gains for each joint separately.
# Each column in the arrays below will then correspond to a single joint. Note that
# this is the case even if the joint is controlled by two motors. Thus, the total
# size of each array will be equivalent to the number of joints in the robot. Also,
# joints are listed from the 'bottom-up'. For example, the indexes corresponding to
# the WX200 robot would be [waist, shoulder, elbow, wrist_angle, wrist_rotate, gripper].
#
# Set 'joint_id' to 1 or higher to specify pid gains for only that joint. In this
# case, 'joint_id' corresponds to the motor id specified in the robot-specific 'yaml'
# file located in the 'config' directory. Additionally, the arrays below will all
# have a length of 1.
int8 joint_id

# Each index in the arrays below correspond to a specific joint. Note that if a
# joint is controlled by two motors, both motors' pid gains will change. Values
# can range from 0 - 16,383.
int32[] Kp_pos
int32[] Ki_pos
int32[] Kd_pos

# In a similar fashion, the feed-forward velocity gains (K1) and feed-forward acceleration
# gains (K2) can be specified. The range of values is the same as that for the PID gains.

int32[] K1
int32[] K2

# Set Velocity PI gains similarly below.

int32[] Kp_vel
int32[] Ki_vel
---

")

(setf (get interbotix_sdk::FirmwareGainsResponse :md5sum-) "1a3c17ff4352d3a3bf5d6c64d4bd58a6")
(setf (get interbotix_sdk::FirmwareGainsResponse :datatype-) "interbotix_sdk/FirmwareGainsResponse")
(setf (get interbotix_sdk::FirmwareGainsResponse :definition-)
      "# Send Position PID and/or Velocity PI gains to the firmware
#
# To get familiar with the register values, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.
#
# Set 'joint_id' to 0 if you want to specify pid gains for each joint separately.
# Each column in the arrays below will then correspond to a single joint. Note that
# this is the case even if the joint is controlled by two motors. Thus, the total
# size of each array will be equivalent to the number of joints in the robot. Also,
# joints are listed from the 'bottom-up'. For example, the indexes corresponding to
# the WX200 robot would be [waist, shoulder, elbow, wrist_angle, wrist_rotate, gripper].
#
# Set 'joint_id' to 1 or higher to specify pid gains for only that joint. In this
# case, 'joint_id' corresponds to the motor id specified in the robot-specific 'yaml'
# file located in the 'config' directory. Additionally, the arrays below will all
# have a length of 1.
int8 joint_id

# Each index in the arrays below correspond to a specific joint. Note that if a
# joint is controlled by two motors, both motors' pid gains will change. Values
# can range from 0 - 16,383.
int32[] Kp_pos
int32[] Ki_pos
int32[] Kd_pos

# In a similar fashion, the feed-forward velocity gains (K1) and feed-forward acceleration
# gains (K2) can be specified. The range of values is the same as that for the PID gains.

int32[] K1
int32[] K2

# Set Velocity PI gains similarly below.

int32[] Kp_vel
int32[] Ki_vel
---

")



(provide :interbotix_sdk/FirmwareGains "1a3c17ff4352d3a3bf5d6c64d4bd58a6")


