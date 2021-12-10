
(cl:in-package :asdf)

(defsystem "interbotix_joy_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JoyControl" :depends-on ("_package_JoyControl"))
    (:file "_package_JoyControl" :depends-on ("_package"))
  ))