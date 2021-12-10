;; Auto-generated. Do not edit!


(when (boundp 'testing_environment_moveit::CustomAngle)
  (if (not (find-package "TESTING_ENVIRONMENT_MOVEIT"))
    (make-package "TESTING_ENVIRONMENT_MOVEIT"))
  (shadow 'CustomAngle (find-package "TESTING_ENVIRONMENT_MOVEIT")))
(unless (find-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMANGLE")
  (make-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMANGLE"))
(unless (find-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMANGLEREQUEST")
  (make-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMANGLEREQUEST"))
(unless (find-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMANGLERESPONSE")
  (make-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMANGLERESPONSE"))

(in-package "ROS")





(defclass testing_environment_moveit::CustomAngleRequest
  :super ros::object
  :slots (_arm_a_angles _arm_b_angles ))

(defmethod testing_environment_moveit::CustomAngleRequest
  (:init
   (&key
    ((:arm_a_angles __arm_a_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:arm_b_angles __arm_b_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _arm_a_angles __arm_a_angles)
   (setq _arm_b_angles __arm_b_angles)
   self)
  (:arm_a_angles
   (&optional __arm_a_angles)
   (if __arm_a_angles (setq _arm_a_angles __arm_a_angles)) _arm_a_angles)
  (:arm_b_angles
   (&optional __arm_b_angles)
   (if __arm_b_angles (setq _arm_b_angles __arm_b_angles)) _arm_b_angles)
  (:serialization-length
   ()
   (+
    ;; float64[] _arm_a_angles
    (* 8    (length _arm_a_angles)) 4
    ;; float64[] _arm_b_angles
    (* 8    (length _arm_b_angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _arm_a_angles
     (write-long (length _arm_a_angles) s)
     (dotimes (i (length _arm_a_angles))
       (sys::poke (elt _arm_a_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _arm_b_angles
     (write-long (length _arm_b_angles) s)
     (dotimes (i (length _arm_b_angles))
       (sys::poke (elt _arm_b_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _arm_a_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arm_a_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _arm_a_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _arm_b_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arm_b_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _arm_b_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass testing_environment_moveit::CustomAngleResponse
  :super ros::object
  :slots ())

(defmethod testing_environment_moveit::CustomAngleResponse
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

(defclass testing_environment_moveit::CustomAngle
  :super ros::object
  :slots ())

(setf (get testing_environment_moveit::CustomAngle :md5sum-) "a04862b47749bf3d91cb040c5b55f914")
(setf (get testing_environment_moveit::CustomAngle :datatype-) "testing_environment_moveit/CustomAngle")
(setf (get testing_environment_moveit::CustomAngle :request) testing_environment_moveit::CustomAngleRequest)
(setf (get testing_environment_moveit::CustomAngle :response) testing_environment_moveit::CustomAngleResponse)

(defmethod testing_environment_moveit::CustomAngleRequest
  (:response () (instance testing_environment_moveit::CustomAngleResponse :init)))

(setf (get testing_environment_moveit::CustomAngleRequest :md5sum-) "a04862b47749bf3d91cb040c5b55f914")
(setf (get testing_environment_moveit::CustomAngleRequest :datatype-) "testing_environment_moveit/CustomAngleRequest")
(setf (get testing_environment_moveit::CustomAngleRequest :definition-)
      "# angles for arm A
float64[] arm_a_angles

# angles for arm B
float64[] arm_b_angles
---

")

(setf (get testing_environment_moveit::CustomAngleResponse :md5sum-) "a04862b47749bf3d91cb040c5b55f914")
(setf (get testing_environment_moveit::CustomAngleResponse :datatype-) "testing_environment_moveit/CustomAngleResponse")
(setf (get testing_environment_moveit::CustomAngleResponse :definition-)
      "# angles for arm A
float64[] arm_a_angles

# angles for arm B
float64[] arm_b_angles
---

")



(provide :testing_environment_moveit/CustomAngle "a04862b47749bf3d91cb040c5b55f914")


