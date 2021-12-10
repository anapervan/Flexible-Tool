
(cl:in-package :asdf)

(defsystem "interbotix_diagnostic_tool-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorTemps" :depends-on ("_package_MotorTemps"))
    (:file "_package_MotorTemps" :depends-on ("_package"))
  ))