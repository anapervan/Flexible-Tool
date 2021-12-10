
(cl:in-package :asdf)

(defsystem "interbotix_turret_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurretControl" :depends-on ("_package_TurretControl"))
    (:file "_package_TurretControl" :depends-on ("_package"))
  ))