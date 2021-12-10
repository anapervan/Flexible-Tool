;; Auto-generated. Do not edit!


(when (boundp 'testing_environment_moveit::CustomPosition)
  (if (not (find-package "TESTING_ENVIRONMENT_MOVEIT"))
    (make-package "TESTING_ENVIRONMENT_MOVEIT"))
  (shadow 'CustomPosition (find-package "TESTING_ENVIRONMENT_MOVEIT")))
(unless (find-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMPOSITION")
  (make-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMPOSITION"))
(unless (find-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMPOSITIONREQUEST")
  (make-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMPOSITIONREQUEST"))
(unless (find-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMPOSITIONRESPONSE")
  (make-package "TESTING_ENVIRONMENT_MOVEIT::CUSTOMPOSITIONRESPONSE"))

(in-package "ROS")





(defclass testing_environment_moveit::CustomPositionRequest
  :super ros::object
  :slots (_arm_a_x_pos _arm_a_y_pos _arm_a_z_pos _arm_b_x_pos _arm_b_y_pos _arm_b_z_pos ))

(defmethod testing_environment_moveit::CustomPositionRequest
  (:init
   (&key
    ((:arm_a_x_pos __arm_a_x_pos) 0.0)
    ((:arm_a_y_pos __arm_a_y_pos) 0.0)
    ((:arm_a_z_pos __arm_a_z_pos) 0.0)
    ((:arm_b_x_pos __arm_b_x_pos) 0.0)
    ((:arm_b_y_pos __arm_b_y_pos) 0.0)
    ((:arm_b_z_pos __arm_b_z_pos) 0.0)
    )
   (send-super :init)
   (setq _arm_a_x_pos (float __arm_a_x_pos))
   (setq _arm_a_y_pos (float __arm_a_y_pos))
   (setq _arm_a_z_pos (float __arm_a_z_pos))
   (setq _arm_b_x_pos (float __arm_b_x_pos))
   (setq _arm_b_y_pos (float __arm_b_y_pos))
   (setq _arm_b_z_pos (float __arm_b_z_pos))
   self)
  (:arm_a_x_pos
   (&optional __arm_a_x_pos)
   (if __arm_a_x_pos (setq _arm_a_x_pos __arm_a_x_pos)) _arm_a_x_pos)
  (:arm_a_y_pos
   (&optional __arm_a_y_pos)
   (if __arm_a_y_pos (setq _arm_a_y_pos __arm_a_y_pos)) _arm_a_y_pos)
  (:arm_a_z_pos
   (&optional __arm_a_z_pos)
   (if __arm_a_z_pos (setq _arm_a_z_pos __arm_a_z_pos)) _arm_a_z_pos)
  (:arm_b_x_pos
   (&optional __arm_b_x_pos)
   (if __arm_b_x_pos (setq _arm_b_x_pos __arm_b_x_pos)) _arm_b_x_pos)
  (:arm_b_y_pos
   (&optional __arm_b_y_pos)
   (if __arm_b_y_pos (setq _arm_b_y_pos __arm_b_y_pos)) _arm_b_y_pos)
  (:arm_b_z_pos
   (&optional __arm_b_z_pos)
   (if __arm_b_z_pos (setq _arm_b_z_pos __arm_b_z_pos)) _arm_b_z_pos)
  (:serialization-length
   ()
   (+
    ;; float64 _arm_a_x_pos
    8
    ;; float64 _arm_a_y_pos
    8
    ;; float64 _arm_a_z_pos
    8
    ;; float64 _arm_b_x_pos
    8
    ;; float64 _arm_b_y_pos
    8
    ;; float64 _arm_b_z_pos
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _arm_a_x_pos
       (sys::poke _arm_a_x_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arm_a_y_pos
       (sys::poke _arm_a_y_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arm_a_z_pos
       (sys::poke _arm_a_z_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arm_b_x_pos
       (sys::poke _arm_b_x_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arm_b_y_pos
       (sys::poke _arm_b_y_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arm_b_z_pos
       (sys::poke _arm_b_z_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _arm_a_x_pos
     (setq _arm_a_x_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arm_a_y_pos
     (setq _arm_a_y_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arm_a_z_pos
     (setq _arm_a_z_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arm_b_x_pos
     (setq _arm_b_x_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arm_b_y_pos
     (setq _arm_b_y_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arm_b_z_pos
     (setq _arm_b_z_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass testing_environment_moveit::CustomPositionResponse
  :super ros::object
  :slots ())

(defmethod testing_environment_moveit::CustomPositionResponse
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

(defclass testing_environment_moveit::CustomPosition
  :super ros::object
  :slots ())

(setf (get testing_environment_moveit::CustomPosition :md5sum-) "23304a51cb2971aef33a4c038286d08b")
(setf (get testing_environment_moveit::CustomPosition :datatype-) "testing_environment_moveit/CustomPosition")
(setf (get testing_environment_moveit::CustomPosition :request) testing_environment_moveit::CustomPositionRequest)
(setf (get testing_environment_moveit::CustomPosition :response) testing_environment_moveit::CustomPositionResponse)

(defmethod testing_environment_moveit::CustomPositionRequest
  (:response () (instance testing_environment_moveit::CustomPositionResponse :init)))

(setf (get testing_environment_moveit::CustomPositionRequest :md5sum-) "23304a51cb2971aef33a4c038286d08b")
(setf (get testing_environment_moveit::CustomPositionRequest :datatype-) "testing_environment_moveit/CustomPositionRequest")
(setf (get testing_environment_moveit::CustomPositionRequest :definition-)
      "# x,y,z and yaw angle for arm A with respect to origin
float64 arm_a_x_pos
float64 arm_a_y_pos
float64 arm_a_z_pos

# x,y,z and yaw angle for arm B with respect to origin
float64 arm_b_x_pos
float64 arm_b_y_pos
float64 arm_b_z_pos
---

")

(setf (get testing_environment_moveit::CustomPositionResponse :md5sum-) "23304a51cb2971aef33a4c038286d08b")
(setf (get testing_environment_moveit::CustomPositionResponse :datatype-) "testing_environment_moveit/CustomPositionResponse")
(setf (get testing_environment_moveit::CustomPositionResponse :definition-)
      "# x,y,z and yaw angle for arm A with respect to origin
float64 arm_a_x_pos
float64 arm_a_y_pos
float64 arm_a_z_pos

# x,y,z and yaw angle for arm B with respect to origin
float64 arm_b_x_pos
float64 arm_b_y_pos
float64 arm_b_z_pos
---

")



(provide :testing_environment_moveit/CustomPosition "23304a51cb2971aef33a4c038286d08b")


