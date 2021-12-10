;; Auto-generated. Do not edit!


(when (boundp 'interbotix_diagnostic_tool::MotorTemps)
  (if (not (find-package "INTERBOTIX_DIAGNOSTIC_TOOL"))
    (make-package "INTERBOTIX_DIAGNOSTIC_TOOL"))
  (shadow 'MotorTemps (find-package "INTERBOTIX_DIAGNOSTIC_TOOL")))
(unless (find-package "INTERBOTIX_DIAGNOSTIC_TOOL::MOTORTEMPS")
  (make-package "INTERBOTIX_DIAGNOSTIC_TOOL::MOTORTEMPS"))

(in-package "ROS")
;;//! \htmlinclude MotorTemps.msg.html


(defclass interbotix_diagnostic_tool::MotorTemps
  :super ros::object
  :slots (_temps ))

(defmethod interbotix_diagnostic_tool::MotorTemps
  (:init
   (&key
    ((:temps __temps) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _temps __temps)
   self)
  (:temps
   (&optional __temps)
   (if __temps (setq _temps __temps)) _temps)
  (:serialization-length
   ()
   (+
    ;; int32[] _temps
    (* 4    (length _temps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _temps
     (write-long (length _temps) s)
     (dotimes (i (length _temps))
       (write-long (elt _temps i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _temps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _temps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get interbotix_diagnostic_tool::MotorTemps :md5sum-) "7f89afb1d165a8db94d9bf67299f1c7a")
(setf (get interbotix_diagnostic_tool::MotorTemps :datatype-) "interbotix_diagnostic_tool/MotorTemps")
(setf (get interbotix_diagnostic_tool::MotorTemps :definition-)
      "# Publish a vector of joint temperatures [C] for the arm joints
#
# The order of the temperatures is the same as the order of the joint names as published in the joint states topic
int32[] temps

")



(provide :interbotix_diagnostic_tool/MotorTemps "7f89afb1d165a8db94d9bf67299f1c7a")


