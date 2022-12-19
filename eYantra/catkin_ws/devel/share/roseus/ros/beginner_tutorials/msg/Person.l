;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Person)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Person (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::PERSON")
  (make-package "BEGINNER_TUTORIALS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass beginner_tutorials::Person
  :super ros::object
  :slots (_name _age ))

(defmethod beginner_tutorials::Person
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Person :md5sum-) "83da5ca00b8e049b0559653a472c88a5")
(setf (get beginner_tutorials::Person :datatype-) "beginner_tutorials/Person")
(setf (get beginner_tutorials::Person :definition-)
      "string name
int32 age

")



(provide :beginner_tutorials/Person "83da5ca00b8e049b0559653a472c88a5")


