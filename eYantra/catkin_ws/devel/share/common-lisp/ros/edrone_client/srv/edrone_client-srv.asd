
(cl:in-package :asdf)

(defsystem "edrone_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "edrone_services" :depends-on ("_package_edrone_services"))
    (:file "_package_edrone_services" :depends-on ("_package"))
  ))