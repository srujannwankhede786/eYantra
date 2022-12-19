;; Auto-generated. Do not edit!


(when (boundp 'survey_and_rescue::SRBeaconStats)
  (if (not (find-package "SURVEY_AND_RESCUE"))
    (make-package "SURVEY_AND_RESCUE"))
  (shadow 'SRBeaconStats (find-package "SURVEY_AND_RESCUE")))
(unless (find-package "SURVEY_AND_RESCUE::SRBEACONSTATS")
  (make-package "SURVEY_AND_RESCUE::SRBEACONSTATS"))

(in-package "ROS")
;;//! \htmlinclude SRBeaconStats.msg.html


(defclass survey_and_rescue::SRBeaconStats
  :super ros::object
  :slots (_FOOD _MEDICINE _RESCUE ))

(defmethod survey_and_rescue::SRBeaconStats
  (:init
   (&key
    ((:FOOD __FOOD) (make-array 0 :initial-element 0 :element-type :char))
    ((:MEDICINE __MEDICINE) (make-array 0 :initial-element 0 :element-type :char))
    ((:RESCUE __RESCUE) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _FOOD __FOOD)
   (setq _MEDICINE __MEDICINE)
   (setq _RESCUE __RESCUE)
   self)
  (:FOOD
   (&optional __FOOD)
   (if __FOOD (setq _FOOD __FOOD)) _FOOD)
  (:MEDICINE
   (&optional __MEDICINE)
   (if __MEDICINE (setq _MEDICINE __MEDICINE)) _MEDICINE)
  (:RESCUE
   (&optional __RESCUE)
   (if __RESCUE (setq _RESCUE __RESCUE)) _RESCUE)
  (:serialization-length
   ()
   (+
    ;; uint8[] _FOOD
    (* 1    (length _FOOD)) 4
    ;; uint8[] _MEDICINE
    (* 1    (length _MEDICINE)) 4
    ;; uint8[] _RESCUE
    (* 1    (length _RESCUE)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _FOOD
     (write-long (length _FOOD) s)
     (princ _FOOD s)
     ;; uint8[] _MEDICINE
     (write-long (length _MEDICINE) s)
     (princ _MEDICINE s)
     ;; uint8[] _RESCUE
     (write-long (length _RESCUE) s)
     (princ _RESCUE s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _FOOD
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _FOOD (make-array n :element-type :char))
     (replace _FOOD buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _MEDICINE
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _MEDICINE (make-array n :element-type :char))
     (replace _MEDICINE buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _RESCUE
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _RESCUE (make-array n :element-type :char))
     (replace _RESCUE buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get survey_and_rescue::SRBeaconStats :md5sum-) "a79cd048d1c2632f303ccd4ac3fc8908")
(setf (get survey_and_rescue::SRBeaconStats :datatype-) "survey_and_rescue/SRBeaconStats")
(setf (get survey_and_rescue::SRBeaconStats :definition-)
      "uint8[] FOOD
uint8[] MEDICINE
uint8[] RESCUE

")



(provide :survey_and_rescue/SRBeaconStats "a79cd048d1c2632f303ccd4ac3fc8908")


