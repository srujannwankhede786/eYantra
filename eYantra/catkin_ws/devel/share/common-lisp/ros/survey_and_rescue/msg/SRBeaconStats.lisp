; Auto-generated. Do not edit!


(cl:in-package survey_and_rescue-msg)


;//! \htmlinclude SRBeaconStats.msg.html

(cl:defclass <SRBeaconStats> (roslisp-msg-protocol:ros-message)
  ((FOOD
    :reader FOOD
    :initarg :FOOD
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (MEDICINE
    :reader MEDICINE
    :initarg :MEDICINE
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (RESCUE
    :reader RESCUE
    :initarg :RESCUE
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SRBeaconStats (<SRBeaconStats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SRBeaconStats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SRBeaconStats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name survey_and_rescue-msg:<SRBeaconStats> is deprecated: use survey_and_rescue-msg:SRBeaconStats instead.")))

(cl:ensure-generic-function 'FOOD-val :lambda-list '(m))
(cl:defmethod FOOD-val ((m <SRBeaconStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:FOOD-val is deprecated.  Use survey_and_rescue-msg:FOOD instead.")
  (FOOD m))

(cl:ensure-generic-function 'MEDICINE-val :lambda-list '(m))
(cl:defmethod MEDICINE-val ((m <SRBeaconStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:MEDICINE-val is deprecated.  Use survey_and_rescue-msg:MEDICINE instead.")
  (MEDICINE m))

(cl:ensure-generic-function 'RESCUE-val :lambda-list '(m))
(cl:defmethod RESCUE-val ((m <SRBeaconStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:RESCUE-val is deprecated.  Use survey_and_rescue-msg:RESCUE instead.")
  (RESCUE m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SRBeaconStats>) ostream)
  "Serializes a message object of type '<SRBeaconStats>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'FOOD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'FOOD))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'MEDICINE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'MEDICINE))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'RESCUE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'RESCUE))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SRBeaconStats>) istream)
  "Deserializes a message object of type '<SRBeaconStats>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'FOOD) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'FOOD)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'MEDICINE) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'MEDICINE)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'RESCUE) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'RESCUE)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SRBeaconStats>)))
  "Returns string type for a message object of type '<SRBeaconStats>"
  "survey_and_rescue/SRBeaconStats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SRBeaconStats)))
  "Returns string type for a message object of type 'SRBeaconStats"
  "survey_and_rescue/SRBeaconStats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SRBeaconStats>)))
  "Returns md5sum for a message object of type '<SRBeaconStats>"
  "a79cd048d1c2632f303ccd4ac3fc8908")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SRBeaconStats)))
  "Returns md5sum for a message object of type 'SRBeaconStats"
  "a79cd048d1c2632f303ccd4ac3fc8908")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SRBeaconStats>)))
  "Returns full string definition for message of type '<SRBeaconStats>"
  (cl:format cl:nil "uint8[] FOOD~%uint8[] MEDICINE~%uint8[] RESCUE~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SRBeaconStats)))
  "Returns full string definition for message of type 'SRBeaconStats"
  (cl:format cl:nil "uint8[] FOOD~%uint8[] MEDICINE~%uint8[] RESCUE~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SRBeaconStats>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'FOOD) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'MEDICINE) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'RESCUE) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SRBeaconStats>))
  "Converts a ROS message object to a list"
  (cl:list 'SRBeaconStats
    (cl:cons ':FOOD (FOOD msg))
    (cl:cons ':MEDICINE (MEDICINE msg))
    (cl:cons ':RESCUE (RESCUE msg))
))
