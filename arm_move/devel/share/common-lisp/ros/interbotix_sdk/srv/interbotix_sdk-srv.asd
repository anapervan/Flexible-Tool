
(cl:in-package :asdf)

(defsystem "interbotix_sdk-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FirmwareGains" :depends-on ("_package_FirmwareGains"))
    (:file "_package_FirmwareGains" :depends-on ("_package"))
    (:file "OperatingModes" :depends-on ("_package_OperatingModes"))
    (:file "_package_OperatingModes" :depends-on ("_package"))
    (:file "RegisterValues" :depends-on ("_package_RegisterValues"))
    (:file "_package_RegisterValues" :depends-on ("_package"))
    (:file "RobotInfo" :depends-on ("_package_RobotInfo"))
    (:file "_package_RobotInfo" :depends-on ("_package"))
  ))