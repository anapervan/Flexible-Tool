
(cl:in-package :asdf)

(defsystem "testing_environment_moveit-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CustomAngle" :depends-on ("_package_CustomAngle"))
    (:file "_package_CustomAngle" :depends-on ("_package"))
    (:file "CustomPosition" :depends-on ("_package_CustomPosition"))
    (:file "_package_CustomPosition" :depends-on ("_package"))
  ))