;; Auto-generated. Do not edit!


(when (boundp 'interbotix_sdk::JointCommands)
  (if (not (find-package "INTERBOTIX_SDK"))
    (make-package "INTERBOTIX_SDK"))
  (shadow 'JointCommands (find-package "INTERBOTIX_SDK")))
(unless (find-package "INTERBOTIX_SDK::JOINTCOMMANDS")
  (make-package "INTERBOTIX_SDK::JOINTCOMMANDS"))

(in-package "ROS")
;;//! \htmlinclude JointCommands.msg.html


(defclass interbotix_sdk::JointCommands
  :super ros::object
  :slots (_cmd ))

(defmethod interbotix_sdk::JointCommands
  (:init
   (&key
    ((:cmd __cmd) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmd __cmd)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; float64[] _cmd
    (* 8    (length _cmd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _cmd
     (write-long (length _cmd) s)
     (dotimes (i (length _cmd))
       (sys::poke (elt _cmd i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cmd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cmd i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get interbotix_sdk::JointCommands :md5sum-) "306931a8f4b928ea86b21d23c7e4f90e")
(setf (get interbotix_sdk::JointCommands :datatype-) "interbotix_sdk/JointCommands")
(setf (get interbotix_sdk::JointCommands :definition-)
      "# Send a vector of position, velocity, current, or pwm commands to the robot arm joints
#
# The order of the joints is the same as the order of the joint names as published in the joint states topic

float64[] cmd

")



(provide :interbotix_sdk/JointCommands "306931a8f4b928ea86b21d23c7e4f90e")


