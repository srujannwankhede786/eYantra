;; Auto-generated. Do not edit!


(when (boundp 'survey_and_rescue::SRDroneStats)
  (if (not (find-package "SURVEY_AND_RESCUE"))
    (make-package "SURVEY_AND_RESCUE"))
  (shadow 'SRDroneStats (find-package "SURVEY_AND_RESCUE")))
(unless (find-package "SURVEY_AND_RESCUE::SRDRONESTATS")
  (make-package "SURVEY_AND_RESCUE::SRDRONESTATS"))

(in-package "ROS")
;;//! \htmlinclude SRDroneStats.msg.html


(defclass survey_and_rescue::SRDroneStats
  :super ros::object
  :slots (_foodOnboard _medOnboard _foodDistributed _medDistributed _rescues _incorrectDetections _correctDetections _redundantDetections _correctServices _incorrectServices _failedServices _score _currentDetected _totalSucessServiced _currentLit _decisionEvents ))

(defmethod survey_and_rescue::SRDroneStats
  (:init
   (&key
    ((:foodOnboard __foodOnboard) 0)
    ((:medOnboard __medOnboard) 0)
    ((:foodDistributed __foodDistributed) 0)
    ((:medDistributed __medDistributed) 0)
    ((:rescues __rescues) 0)
    ((:incorrectDetections __incorrectDetections) 0)
    ((:correctDetections __correctDetections) 0)
    ((:redundantDetections __redundantDetections) 0)
    ((:correctServices __correctServices) 0)
    ((:incorrectServices __incorrectServices) 0)
    ((:failedServices __failedServices) 0)
    ((:score __score) 0)
    ((:currentDetected __currentDetected) (instance survey_and_rescue::SRBeaconStats :init))
    ((:totalSucessServiced __totalSucessServiced) (instance survey_and_rescue::SRBeaconStats :init))
    ((:currentLit __currentLit) (instance survey_and_rescue::SRBeaconStats :init))
    ((:decisionEvents __decisionEvents) (instance survey_and_rescue::SRBeaconStats :init))
    )
   (send-super :init)
   (setq _foodOnboard (round __foodOnboard))
   (setq _medOnboard (round __medOnboard))
   (setq _foodDistributed (round __foodDistributed))
   (setq _medDistributed (round __medDistributed))
   (setq _rescues (round __rescues))
   (setq _incorrectDetections (round __incorrectDetections))
   (setq _correctDetections (round __correctDetections))
   (setq _redundantDetections (round __redundantDetections))
   (setq _correctServices (round __correctServices))
   (setq _incorrectServices (round __incorrectServices))
   (setq _failedServices (round __failedServices))
   (setq _score (round __score))
   (setq _currentDetected __currentDetected)
   (setq _totalSucessServiced __totalSucessServiced)
   (setq _currentLit __currentLit)
   (setq _decisionEvents __decisionEvents)
   self)
  (:foodOnboard
   (&optional __foodOnboard)
   (if __foodOnboard (setq _foodOnboard __foodOnboard)) _foodOnboard)
  (:medOnboard
   (&optional __medOnboard)
   (if __medOnboard (setq _medOnboard __medOnboard)) _medOnboard)
  (:foodDistributed
   (&optional __foodDistributed)
   (if __foodDistributed (setq _foodDistributed __foodDistributed)) _foodDistributed)
  (:medDistributed
   (&optional __medDistributed)
   (if __medDistributed (setq _medDistributed __medDistributed)) _medDistributed)
  (:rescues
   (&optional __rescues)
   (if __rescues (setq _rescues __rescues)) _rescues)
  (:incorrectDetections
   (&optional __incorrectDetections)
   (if __incorrectDetections (setq _incorrectDetections __incorrectDetections)) _incorrectDetections)
  (:correctDetections
   (&optional __correctDetections)
   (if __correctDetections (setq _correctDetections __correctDetections)) _correctDetections)
  (:redundantDetections
   (&optional __redundantDetections)
   (if __redundantDetections (setq _redundantDetections __redundantDetections)) _redundantDetections)
  (:correctServices
   (&optional __correctServices)
   (if __correctServices (setq _correctServices __correctServices)) _correctServices)
  (:incorrectServices
   (&optional __incorrectServices)
   (if __incorrectServices (setq _incorrectServices __incorrectServices)) _incorrectServices)
  (:failedServices
   (&optional __failedServices)
   (if __failedServices (setq _failedServices __failedServices)) _failedServices)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:currentDetected
   (&rest __currentDetected)
   (if (keywordp (car __currentDetected))
       (send* _currentDetected __currentDetected)
     (progn
       (if __currentDetected (setq _currentDetected (car __currentDetected)))
       _currentDetected)))
  (:totalSucessServiced
   (&rest __totalSucessServiced)
   (if (keywordp (car __totalSucessServiced))
       (send* _totalSucessServiced __totalSucessServiced)
     (progn
       (if __totalSucessServiced (setq _totalSucessServiced (car __totalSucessServiced)))
       _totalSucessServiced)))
  (:currentLit
   (&rest __currentLit)
   (if (keywordp (car __currentLit))
       (send* _currentLit __currentLit)
     (progn
       (if __currentLit (setq _currentLit (car __currentLit)))
       _currentLit)))
  (:decisionEvents
   (&rest __decisionEvents)
   (if (keywordp (car __decisionEvents))
       (send* _decisionEvents __decisionEvents)
     (progn
       (if __decisionEvents (setq _decisionEvents (car __decisionEvents)))
       _decisionEvents)))
  (:serialization-length
   ()
   (+
    ;; uint8 _foodOnboard
    1
    ;; uint8 _medOnboard
    1
    ;; uint8 _foodDistributed
    1
    ;; uint8 _medDistributed
    1
    ;; uint8 _rescues
    1
    ;; uint8 _incorrectDetections
    1
    ;; uint8 _correctDetections
    1
    ;; uint8 _redundantDetections
    1
    ;; uint8 _correctServices
    1
    ;; uint8 _incorrectServices
    1
    ;; uint8 _failedServices
    1
    ;; int16 _score
    2
    ;; survey_and_rescue/SRBeaconStats _currentDetected
    (send _currentDetected :serialization-length)
    ;; survey_and_rescue/SRBeaconStats _totalSucessServiced
    (send _totalSucessServiced :serialization-length)
    ;; survey_and_rescue/SRBeaconStats _currentLit
    (send _currentLit :serialization-length)
    ;; survey_and_rescue/SRBeaconStats _decisionEvents
    (send _decisionEvents :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _foodOnboard
       (write-byte _foodOnboard s)
     ;; uint8 _medOnboard
       (write-byte _medOnboard s)
     ;; uint8 _foodDistributed
       (write-byte _foodDistributed s)
     ;; uint8 _medDistributed
       (write-byte _medDistributed s)
     ;; uint8 _rescues
       (write-byte _rescues s)
     ;; uint8 _incorrectDetections
       (write-byte _incorrectDetections s)
     ;; uint8 _correctDetections
       (write-byte _correctDetections s)
     ;; uint8 _redundantDetections
       (write-byte _redundantDetections s)
     ;; uint8 _correctServices
       (write-byte _correctServices s)
     ;; uint8 _incorrectServices
       (write-byte _incorrectServices s)
     ;; uint8 _failedServices
       (write-byte _failedServices s)
     ;; int16 _score
       (write-word _score s)
     ;; survey_and_rescue/SRBeaconStats _currentDetected
       (send _currentDetected :serialize s)
     ;; survey_and_rescue/SRBeaconStats _totalSucessServiced
       (send _totalSucessServiced :serialize s)
     ;; survey_and_rescue/SRBeaconStats _currentLit
       (send _currentLit :serialize s)
     ;; survey_and_rescue/SRBeaconStats _decisionEvents
       (send _decisionEvents :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _foodOnboard
     (setq _foodOnboard (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _medOnboard
     (setq _medOnboard (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _foodDistributed
     (setq _foodDistributed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _medDistributed
     (setq _medDistributed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rescues
     (setq _rescues (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _incorrectDetections
     (setq _incorrectDetections (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _correctDetections
     (setq _correctDetections (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _redundantDetections
     (setq _redundantDetections (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _correctServices
     (setq _correctServices (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _incorrectServices
     (setq _incorrectServices (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _failedServices
     (setq _failedServices (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _score
     (setq _score (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; survey_and_rescue/SRBeaconStats _currentDetected
     (send _currentDetected :deserialize buf ptr-) (incf ptr- (send _currentDetected :serialization-length))
   ;; survey_and_rescue/SRBeaconStats _totalSucessServiced
     (send _totalSucessServiced :deserialize buf ptr-) (incf ptr- (send _totalSucessServiced :serialization-length))
   ;; survey_and_rescue/SRBeaconStats _currentLit
     (send _currentLit :deserialize buf ptr-) (incf ptr- (send _currentLit :serialization-length))
   ;; survey_and_rescue/SRBeaconStats _decisionEvents
     (send _decisionEvents :deserialize buf ptr-) (incf ptr- (send _decisionEvents :serialization-length))
   ;;
   self)
  )

(setf (get survey_and_rescue::SRDroneStats :md5sum-) "b187ed9321d4be8456a34e0ba5724a84")
(setf (get survey_and_rescue::SRDroneStats :datatype-) "survey_and_rescue/SRDroneStats")
(setf (get survey_and_rescue::SRDroneStats :definition-)
      "uint8 foodOnboard
uint8 medOnboard
uint8 foodDistributed
uint8 medDistributed
uint8 rescues
uint8 incorrectDetections
uint8 correctDetections
uint8 redundantDetections
uint8 correctServices
uint8 incorrectServices
uint8 failedServices
int16 score
SRBeaconStats currentDetected
SRBeaconStats totalSucessServiced
SRBeaconStats currentLit
SRBeaconStats decisionEvents

================================================================================
MSG: survey_and_rescue/SRBeaconStats
uint8[] FOOD
uint8[] MEDICINE
uint8[] RESCUE

")



(provide :survey_and_rescue/SRDroneStats "b187ed9321d4be8456a34e0ba5724a84")


