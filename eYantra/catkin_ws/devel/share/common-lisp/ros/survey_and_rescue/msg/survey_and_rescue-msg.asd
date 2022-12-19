
(cl:in-package :asdf)

(defsystem "survey_and_rescue-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SRBeaconStats" :depends-on ("_package_SRBeaconStats"))
    (:file "_package_SRBeaconStats" :depends-on ("_package"))
    (:file "SRDroneStats" :depends-on ("_package_SRDroneStats"))
    (:file "_package_SRDroneStats" :depends-on ("_package"))
    (:file "SRinfo" :depends-on ("_package_SRinfo"))
    (:file "_package_SRinfo" :depends-on ("_package"))
  ))