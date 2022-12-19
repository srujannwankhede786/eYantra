;; Auto-generated. Do not edit!


(when (boundp 'survey_and_rescue::yo)
  (if (not (find-package "SURVEY_AND_RESCUE"))
    (make-package "SURVEY_AND_RESCUE"))
  (shadow 'yo (find-package "SURVEY_AND_RESCUE")))
(unless (find-package "SURVEY_AND_RESCUE::YO")
  (make-package "SURVEY_AND_RESCUE::YO"))

(in-package "ROS")
;;//! \htmlinclude yo.msg.html


(defclass survey_and_rescue::yo
  :super ros::object
  :slots (_location _info ))

(defmethod survey_and_rescue::yo
  (:init
   (&key
    ((:location __location) "")
    ((:info __info) "")
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _info (string __info))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get survey_and_rescue::yo :md5sum-) "086e73c5fbed997f9c9e944f67f1b4d9")
(setf (get survey_and_rescue::yo :datatype-) "survey_and_rescue/yo")
(setf (get survey_and_rescue::yo :definition-)
      "string location
string info

")



(provide :survey_and_rescue/yo "086e73c5fbed997f9c9e944f67f1b4d9")


