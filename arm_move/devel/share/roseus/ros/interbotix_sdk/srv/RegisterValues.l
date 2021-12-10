;; Auto-generated. Do not edit!


(when (boundp 'interbotix_sdk::RegisterValues)
  (if (not (find-package "INTERBOTIX_SDK"))
    (make-package "INTERBOTIX_SDK"))
  (shadow 'RegisterValues (find-package "INTERBOTIX_SDK")))
(unless (find-package "INTERBOTIX_SDK::REGISTERVALUES")
  (make-package "INTERBOTIX_SDK::REGISTERVALUES"))
(unless (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST")
  (make-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(unless (find-package "INTERBOTIX_SDK::REGISTERVALUESRESPONSE")
  (make-package "INTERBOTIX_SDK::REGISTERVALUESRESPONSE"))

(in-package "ROS")





(intern "*ARM_JOINTS_AND_GRIPPER*" (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(shadow '*ARM_JOINTS_AND_GRIPPER* (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(defconstant interbotix_sdk::RegisterValuesRequest::*ARM_JOINTS_AND_GRIPPER* 1)
(intern "*ARM_JOINTS*" (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(shadow '*ARM_JOINTS* (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(defconstant interbotix_sdk::RegisterValuesRequest::*ARM_JOINTS* 2)
(intern "*GRIPPER*" (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(shadow '*GRIPPER* (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(defconstant interbotix_sdk::RegisterValuesRequest::*GRIPPER* 3)
(intern "*SINGLE_MOTOR*" (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(shadow '*SINGLE_MOTOR* (find-package "INTERBOTIX_SDK::REGISTERVALUESREQUEST"))
(defconstant interbotix_sdk::RegisterValuesRequest::*SINGLE_MOTOR* 4)

(defun interbotix_sdk::RegisterValuesRequest-to-symbol (const)
  (cond
        ((= const 1) 'interbotix_sdk::RegisterValuesRequest::*ARM_JOINTS_AND_GRIPPER*)
        ((= const 2) 'interbotix_sdk::RegisterValuesRequest::*ARM_JOINTS*)
        ((= const 3) 'interbotix_sdk::RegisterValuesRequest::*GRIPPER*)
        ((= const 4) 'interbotix_sdk::RegisterValuesRequest::*SINGLE_MOTOR*)
        (t nil)))

(defclass interbotix_sdk::RegisterValuesRequest
  :super ros::object
  :slots (_cmd _id _addr_name _value ))

(defmethod interbotix_sdk::RegisterValuesRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:id __id) 0)
    ((:addr_name __addr_name) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _id (round __id))
   (setq _addr_name (string __addr_name))
   (setq _value (round __value))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:addr_name
   (&optional __addr_name)
   (if __addr_name (setq _addr_name __addr_name)) _addr_name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _cmd
    1
    ;; uint8 _id
    1
    ;; string _addr_name
    4 (length _addr_name)
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd
       (write-byte _cmd s)
     ;; uint8 _id
       (write-byte _id s)
     ;; string _addr_name
       (write-long (length _addr_name) s) (princ _addr_name s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd 127) (setq _cmd (- _cmd 256)))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _addr_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _addr_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass interbotix_sdk::RegisterValuesResponse
  :super ros::object
  :slots (_values ))

(defmethod interbotix_sdk::RegisterValuesResponse
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; int32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (write-long (elt _values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass interbotix_sdk::RegisterValues
  :super ros::object
  :slots ())

(setf (get interbotix_sdk::RegisterValues :md5sum-) "cbeb4af65dc01d04036fe7b5778dec84")
(setf (get interbotix_sdk::RegisterValues :datatype-) "interbotix_sdk/RegisterValues")
(setf (get interbotix_sdk::RegisterValues :request) interbotix_sdk::RegisterValuesRequest)
(setf (get interbotix_sdk::RegisterValues :response) interbotix_sdk::RegisterValuesResponse)

(defmethod interbotix_sdk::RegisterValuesRequest
  (:response () (instance interbotix_sdk::RegisterValuesResponse :init)))

(setf (get interbotix_sdk::RegisterValuesRequest :md5sum-) "cbeb4af65dc01d04036fe7b5778dec84")
(setf (get interbotix_sdk::RegisterValuesRequest :datatype-) "interbotix_sdk/RegisterValuesRequest")
(setf (get interbotix_sdk::RegisterValuesRequest :definition-)
      "# Set or get the register(s) value(s) from motor(s)
#
# To get familiar with the register values, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.
#
# There are four options to set or get a register value:
#   1) ARM_JOINTS_AND_GRIPPER - affects the register values for all joints, including the gripper.
#   2) ARM_JOINTS - affects the register values for all joints, excluding the gripper.
#   3) GRIPPER - affects the register value only for the gripper
#   4) SINGLE_MOTOR - affects the register value for the motor specified by the 'id' parameter.
#                     Note that the 'id' parameter only needs to be used for this option. For any
#                     other option, it can be left blank.
# Set the option to the 'cmd' parameter and the 'id' to the specified motor (if doing the
# SINGLE_MOTOR option). 'id' is equivalent to the Dynamixel ID of the motor. To look up the motor IDs,
# check out the robot-specific motor config files in the interbotix_sdk/config directory.
#
# Next, set the 'addr_name' parameter to the name of the register to be written to or read from.
#
# If setting the register(s) value, set the 'value' parameter to the desired value. This value will be
# written to either one or many motors depending on the 'cmd' option selected. Note that if a joint is
# controlled by two motors, both motors will be updated with the desired value.
#
# If reading the register(s) values, do not set the 'value' parameter. Instead, call the service at this
# stage. The 'values' vector will be automatically updated with the register(s) value(s). If reading from
# multiple joints at a time, the indexes of the values correspond with the joint names at those indexes in the
# joint_states.name vector.

int8 ARM_JOINTS_AND_GRIPPER = 1
int8 ARM_JOINTS = 2
int8 GRIPPER = 3
int8 SINGLE_MOTOR = 4

int8 cmd
uint8 id
string addr_name
int32 value
---
int32[] values

")

(setf (get interbotix_sdk::RegisterValuesResponse :md5sum-) "cbeb4af65dc01d04036fe7b5778dec84")
(setf (get interbotix_sdk::RegisterValuesResponse :datatype-) "interbotix_sdk/RegisterValuesResponse")
(setf (get interbotix_sdk::RegisterValuesResponse :definition-)
      "# Set or get the register(s) value(s) from motor(s)
#
# To get familiar with the register values, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.
#
# There are four options to set or get a register value:
#   1) ARM_JOINTS_AND_GRIPPER - affects the register values for all joints, including the gripper.
#   2) ARM_JOINTS - affects the register values for all joints, excluding the gripper.
#   3) GRIPPER - affects the register value only for the gripper
#   4) SINGLE_MOTOR - affects the register value for the motor specified by the 'id' parameter.
#                     Note that the 'id' parameter only needs to be used for this option. For any
#                     other option, it can be left blank.
# Set the option to the 'cmd' parameter and the 'id' to the specified motor (if doing the
# SINGLE_MOTOR option). 'id' is equivalent to the Dynamixel ID of the motor. To look up the motor IDs,
# check out the robot-specific motor config files in the interbotix_sdk/config directory.
#
# Next, set the 'addr_name' parameter to the name of the register to be written to or read from.
#
# If setting the register(s) value, set the 'value' parameter to the desired value. This value will be
# written to either one or many motors depending on the 'cmd' option selected. Note that if a joint is
# controlled by two motors, both motors will be updated with the desired value.
#
# If reading the register(s) values, do not set the 'value' parameter. Instead, call the service at this
# stage. The 'values' vector will be automatically updated with the register(s) value(s). If reading from
# multiple joints at a time, the indexes of the values correspond with the joint names at those indexes in the
# joint_states.name vector.

int8 ARM_JOINTS_AND_GRIPPER = 1
int8 ARM_JOINTS = 2
int8 GRIPPER = 3
int8 SINGLE_MOTOR = 4

int8 cmd
uint8 id
string addr_name
int32 value
---
int32[] values

")



(provide :interbotix_sdk/RegisterValues "cbeb4af65dc01d04036fe7b5778dec84")


