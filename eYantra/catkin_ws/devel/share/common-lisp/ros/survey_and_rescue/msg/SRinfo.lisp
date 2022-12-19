; Auto-generated. Do not edit!


(cl:in-package survey_and_rescue-msg)


;//! \htmlinclude SRInfo.msg.html

(cl:defclass <SRInfo> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass SRInfo (<SRInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SRInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SRInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name survey_and_rescue-msg:<SRInfo> is deprecated: use survey_and_rescue-msg:SRInfo instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <SRInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:location-val is deprecated.  Use survey_and_rescue-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <SRInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader survey_and_rescue-msg:info-val is deprecated.  Use survey_and_rescue-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SRInfo>) ostream)
  "Serializes a message object of type '<SRInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SRInfo>) istream)
  "Deserializes a message object of type '<SRInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SRInfo>)))
  "Returns string type for a message object of type '<SRInfo>"
  "survey_and_rescue/SRInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SRInfo)))
  "Returns string type for a message object of type 'SRInfo"
  "survey_and_rescue/SRInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SRInfo>)))
  "Returns md5sum for a message object of type '<SRInfo>"
  "086e73c5fbed997f9c9e944f67f1b4d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SRInfo)))
  "Returns md5sum for a message object of type 'SRInfo"
  "086e73c5fbed997f9c9e944f67f1b4d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SRInfo>)))
  "Returns full string definition for message of type '<SRInfo>"
  (cl:format cl:nil "string location~%string info~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SRInfo)))
  "Returns full string definition for message of type 'SRInfo"
  (cl:format cl:nil "string location~%string info~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SRInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location))
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SRInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SRInfo
    (cl:cons ':location (location msg))
    (cl:cons ':info (info msg))
))
