
(cl:in-package :asdf)

(defsystem "edrone_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "edrone_msgs" :depends-on ("_package_edrone_msgs"))
    (:file "_package_edrone_msgs" :depends-on ("_package"))
  ))