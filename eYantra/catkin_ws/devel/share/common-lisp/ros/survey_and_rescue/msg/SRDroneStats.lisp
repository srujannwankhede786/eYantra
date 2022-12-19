; Auto-generated. Do not edit!


(cl:in-package survey_and_rescue-msg)


;//! \htmlinclude SRDroneStats.msg.html

(cl:defclass <SRDroneStats> (roslisp-msg-protocol:ros-message)
  ((foodOnboard
    :reader foodOnboard
    :initarg :foodOnboard
    :type cl:fixnum
    :initform 0)
   (medOnboard
    :reader medOnboard
    :initarg :medOnboard
    :type cl:fixnum
    :initform 0)
   (foodDistributed
    :reader foodDistributed
    :initarg :foodDistributed
    :type cl:fixnum
    :initform 0)
   (medDistributed
    :reader medDistributed
    :initarg :medDistributed
    :type cl:fixnum
    :initform 0)
   (rescues
    :reader rescues
    :initarg :rescues
    :type cl:fixnum
    :initform 0)
   (incorrectDetections
    :reader incorrectDetections
    :initarg :incorrectDetections
    :type cl:fixnum
    :initform 0)
   (correctDetections
    :reader correctDetections
    :initarg :correctDetections
    :type cl:fixnum
    :initform 0)
   (redundantDetections
    :reader redundantDetections
    :initarg :redundantDetections
    :type cl:fixnum
    :initform 0)
   (correctServices
    :reader correctServices
    :initarg :correctServices
    :type cl:fixnum
    :initform 0)
   (incorrectServices
    :reader incorrectServices
    :initarg :incorrectServices
    :type cl:fixnum
    :initform 0)
   (failedServices
    :reader failedServices
    :initarg :failedServices
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:fixnum
    :initform 0)
   (currentDetected
    :reader currentDetected
    :initarg :currentDetected
    :type survey_and_rescue-msg:SRBeaconStats
    :initform (cl:make-instance 'survey_and_rescue-msg:SRBeaconStats))
   (totalSucessServiced
    :reader totalSucessServiced
    :initarg :totalSucessServiced
    :type survey_and_rescue-msg:SRBeaconStats
    :initform (cl:make-instance 'survey_and_rescue-msg:SRBeaconStats))
   (currentLit
    :reader currentLit
    :initarg :currentLit
    :type survey_and_rescue-msg:SRBeaconStats
    :initform (cl:make-instance 'survey_and_rescue-msg:SRBeaconStats))
   (decisionEvents
    :reader decisionEvents
    :initarg :decisionEvents
    :type survey_and_rescue-msg:SRBeaconStats
    :initform (cl:make-instance 'survey_and_rescue-msg:SRBeaconStats)))
)

(cl:defclass SRDroneStats (<SRDroneStats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SRDroneStats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SRDroneStats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name survey_and_rescue-msg:<SRDroneStats> is deprecated: use survey_and_rescue-msg:SRDroneStats instead.")))

(cl:ensure-generic-function 'foodOnboard-val :lambda-list '(m))
(cl:defmethod foodOnboard-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:foodOnboard-val is deprecated.  Use survey_and_rescue-msg:foodOnboard instead.")
  (foodOnboard m))

(cl:ensure-generic-function 'medOnboard-val :lambda-list '(m))
(cl:defmethod medOnboard-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:medOnboard-val is deprecated.  Use survey_and_rescue-msg:medOnboard instead.")
  (medOnboard m))

(cl:ensure-generic-function 'foodDistributed-val :lambda-list '(m))
(cl:defmethod foodDistributed-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:foodDistributed-val is deprecated.  Use survey_and_rescue-msg:foodDistributed instead.")
  (foodDistributed m))

(cl:ensure-generic-function 'medDistributed-val :lambda-list '(m))
(cl:defmethod medDistributed-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:medDistributed-val is deprecated.  Use survey_and_rescue-msg:medDistributed instead.")
  (medDistributed m))

(cl:ensure-generic-function 'rescues-val :lambda-list '(m))
(cl:defmethod rescues-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:rescues-val is deprecated.  Use survey_and_rescue-msg:rescues instead.")
  (rescues m))

(cl:ensure-generic-function 'incorrectDetections-val :lambda-list '(m))
(cl:defmethod incorrectDetections-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:incorrectDetections-val is deprecated.  Use survey_and_rescue-msg:incorrectDetections instead.")
  (incorrectDetections m))

(cl:ensure-generic-function 'correctDetections-val :lambda-list '(m))
(cl:defmethod correctDetections-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:correctDetections-val is deprecated.  Use survey_and_rescue-msg:correctDetections instead.")
  (correctDetections m))

(cl:ensure-generic-function 'redundantDetections-val :lambda-list '(m))
(cl:defmethod redundantDetections-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:redundantDetections-val is deprecated.  Use survey_and_rescue-msg:redundantDetections instead.")
  (redundantDetections m))

(cl:ensure-generic-function 'correctServices-val :lambda-list '(m))
(cl:defmethod correctServices-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:correctServices-val is deprecated.  Use survey_and_rescue-msg:correctServices instead.")
  (correctServices m))

(cl:ensure-generic-function 'incorrectServices-val :lambda-list '(m))
(cl:defmethod incorrectServices-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:incorrectServices-val is deprecated.  Use survey_and_rescue-msg:incorrectServices instead.")
  (incorrectServices m))

(cl:ensure-generic-function 'failedServices-val :lambda-list '(m))
(cl:defmethod failedServices-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:failedServices-val is deprecated.  Use survey_and_rescue-msg:failedServices instead.")
  (failedServices m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:score-val is deprecated.  Use survey_and_rescue-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'currentDetected-val :lambda-list '(m))
(cl:defmethod currentDetected-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:currentDetected-val is deprecated.  Use survey_and_rescue-msg:currentDetected instead.")
  (currentDetected m))

(cl:ensure-generic-function 'totalSucessServiced-val :lambda-list '(m))
(cl:defmethod totalSucessServiced-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:totalSucessServiced-val is deprecated.  Use survey_and_rescue-msg:totalSucessServiced instead.")
  (totalSucessServiced m))

(cl:ensure-generic-function 'currentLit-val :lambda-list '(m))
(cl:defmethod currentLit-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:currentLit-val is deprecated.  Use survey_and_rescue-msg:currentLit instead.")
  (currentLit m))

(cl:ensure-generic-function 'decisionEvents-val :lambda-list '(m))
(cl:defmethod decisionEvents-val ((m <SRDroneStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:decisionEvents-val is deprecated.  Use survey_and_rescue-msg:decisionEvents instead.")
  (decisionEvents m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SRDroneStats>) ostream)
  "Serializes a message object of type '<SRDroneStats>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'foodOnboard)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'medOnboard)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'foodDistributed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'medDistributed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rescues)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incorrectDetections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'correctDetections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'redundantDetections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'correctServices)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incorrectServices)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failedServices)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'score)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentDetected) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'totalSucessServiced) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentLit) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decisionEvents) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SRDroneStats>) istream)
  "Deserializes a message object of type '<SRDroneStats>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'foodOnboard)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'medOnboard)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'foodDistributed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'medDistributed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rescues)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incorrectDetections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'correctDetections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'redundantDetections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'correctServices)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incorrectServices)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failedServices)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'score) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentDetected) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'totalSucessServiced) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentLit) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decisionEvents) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SRDroneStats>)))
  "Returns string type for a message object of type '<SRDroneStats>"
  "survey_and_rescue/SRDroneStats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SRDroneStats)))
  "Returns string type for a message object of type 'SRDroneStats"
  "survey_and_rescue/SRDroneStats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SRDroneStats>)))
  "Returns md5sum for a message object of type '<SRDroneStats>"
  "b187ed9321d4be8456a34e0ba5724a84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SRDroneStats)))
  "Returns md5sum for a message object of type 'SRDroneStats"
  "b187ed9321d4be8456a34e0ba5724a84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SRDroneStats>)))
  "Returns full string definition for message of type '<SRDroneStats>"
  (cl:format cl:nil "uint8 foodOnboard~%uint8 medOnboard~%uint8 foodDistributed~%uint8 medDistributed~%uint8 rescues~%uint8 incorrectDetections~%uint8 correctDetections~%uint8 redundantDetections~%uint8 correctServices~%uint8 incorrectServices~%uint8 failedServices~%int16 score~%SRBeaconStats currentDetected~%SRBeaconStats totalSucessServiced~%SRBeaconStats currentLit~%SRBeaconStats decisionEvents~%~%================================================================================~%MSG: survey_and_rescue/SRBeaconStats~%uint8[] FOOD~%uint8[] MEDICINE~%uint8[] RESCUE~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SRDroneStats)))
  "Returns full string definition for message of type 'SRDroneStats"
  (cl:format cl:nil "uint8 foodOnboard~%uint8 medOnboard~%uint8 foodDistributed~%uint8 medDistributed~%uint8 rescues~%uint8 incorrectDetections~%uint8 correctDetections~%uint8 redundantDetections~%uint8 correctServices~%uint8 incorrectServices~%uint8 failedServices~%int16 score~%SRBeaconStats currentDetected~%SRBeaconStats totalSucessServiced~%SRBeaconStats currentLit~%SRBeaconStats decisionEvents~%~%================================================================================~%MSG: survey_and_rescue/SRBeaconStats~%uint8[] FOOD~%uint8[] MEDICINE~%uint8[] RESCUE~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SRDroneStats>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentDetected))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'totalSucessServiced))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentLit))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decisionEvents))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SRDroneStats>))
  "Converts a ROS message object to a list"
  (cl:list 'SRDroneStats
    (cl:cons ':foodOnboard (foodOnboard msg))
    (cl:cons ':medOnboard (medOnboard msg))
    (cl:cons ':foodDistributed (foodDistributed msg))
    (cl:cons ':medDistributed (medDistributed msg))
    (cl:cons ':rescues (rescues msg))
    (cl:cons ':incorrectDetections (incorrectDetections msg))
    (cl:cons ':correctDetections (correctDetections msg))
    (cl:cons ':redundantDetections (redundantDetections msg))
    (cl:cons ':correctServices (correctServices msg))
    (cl:cons ':incorrectServices (incorrectServices msg))
    (cl:cons ':failedServices (failedServices msg))
    (cl:cons ':score (score msg))
    (cl:cons ':currentDetected (currentDetected msg))
    (cl:cons ':totalSucessServiced (totalSucessServiced msg))
    (cl:cons ':currentLit (currentLit msg))
    (cl:cons ':decisionEvents (decisionEvents msg))
))
