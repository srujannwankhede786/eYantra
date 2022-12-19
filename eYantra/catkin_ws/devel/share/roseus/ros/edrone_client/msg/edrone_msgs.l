;; Auto-generated. Do not edit!


(when (boundp 'edrone_client::edrone_msgs)
  (if (not (find-package "EDRONE_CLIENT"))
    (make-package "EDRONE_CLIENT"))
  (shadow 'edrone_msgs (find-package "EDRONE_CLIENT")))
(unless (find-package "EDRONE_CLIENT::EDRONE_MSGS")
  (make-package "EDRONE_CLIENT::EDRONE_MSGS"))

(in-package "ROS")
;;//! \htmlinclude edrone_msgs.msg.html


(defclass edrone_client::edrone_msgs
  :super ros::object
  :slots (_rcRoll _rcPitch _rcYaw _rcThrottle _rcAUX1 _rcAUX2 _rcAUX3 _rcAUX4 _droneIndex ))

(defmethod edrone_client::edrone_msgs
  (:init
   (&key
    ((:rcRoll __rcRoll) 0)
    ((:rcPitch __rcPitch) 0)
    ((:rcYaw __rcYaw) 0)
    ((:rcThrottle __rcThrottle) 0)
    ((:rcAUX1 __rcAUX1) 0)
    ((:rcAUX2 __rcAUX2) 0)
    ((:rcAUX3 __rcAUX3) 0)
    ((:rcAUX4 __rcAUX4) 0)
    ((:droneIndex __droneIndex) 0)
    )
   (send-super :init)
   (setq _rcRoll (round __rcRoll))
   (setq _rcPitch (round __rcPitch))
   (setq _rcYaw (round __rcYaw))
   (setq _rcThrottle (round __rcThrottle))
   (setq _rcAUX1 (round __rcAUX1))
   (setq _rcAUX2 (round __rcAUX2))
   (setq _rcAUX3 (round __rcAUX3))
   (setq _rcAUX4 (round __rcAUX4))
   (setq _droneIndex (round __droneIndex))
   self)
  (:rcRoll
   (&optional __rcRoll)
   (if __rcRoll (setq _rcRoll __rcRoll)) _rcRoll)
  (:rcPitch
   (&optional __rcPitch)
   (if __rcPitch (setq _rcPitch __rcPitch)) _rcPitch)
  (:rcYaw
   (&optional __rcYaw)
   (if __rcYaw (setq _rcYaw __rcYaw)) _rcYaw)
  (:rcThrottle
   (&optional __rcThrottle)
   (if __rcThrottle (setq _rcThrottle __rcThrottle)) _rcThrottle)
  (:rcAUX1
   (&optional __rcAUX1)
   (if __rcAUX1 (setq _rcAUX1 __rcAUX1)) _rcAUX1)
  (:rcAUX2
   (&optional __rcAUX2)
   (if __rcAUX2 (setq _rcAUX2 __rcAUX2)) _rcAUX2)
  (:rcAUX3
   (&optional __rcAUX3)
   (if __rcAUX3 (setq _rcAUX3 __rcAUX3)) _rcAUX3)
  (:rcAUX4
   (&optional __rcAUX4)
   (if __rcAUX4 (setq _rcAUX4 __rcAUX4)) _rcAUX4)
  (:droneIndex
   (&optional __droneIndex)
   (if __droneIndex (setq _droneIndex __droneIndex)) _droneIndex)
  (:serialization-length
   ()
   (+
    ;; int64 _rcRoll
    8
    ;; int64 _rcPitch
    8
    ;; int64 _rcYaw
    8
    ;; int64 _rcThrottle
    8
    ;; int64 _rcAUX1
    8
    ;; int64 _rcAUX2
    8
    ;; int64 _rcAUX3
    8
    ;; int64 _rcAUX4
    8
    ;; int64 _droneIndex
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _rcRoll
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcRoll (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcRoll) (= (length (_rcRoll . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcRoll . bv) 0) 0) s)
              (write-long (ash (elt (_rcRoll . bv) 1) -1) s))
             ((and (class _rcRoll) (= (length (_rcRoll . bv)) 1)) ;; big1
              (write-long (elt (_rcRoll . bv) 0) s)
              (write-long (if (>= _rcRoll 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcRoll s)(write-long (if (>= _rcRoll 0) 0 #xffffffff) s)))
     ;; int64 _rcPitch
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcPitch (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcPitch) (= (length (_rcPitch . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcPitch . bv) 0) 0) s)
              (write-long (ash (elt (_rcPitch . bv) 1) -1) s))
             ((and (class _rcPitch) (= (length (_rcPitch . bv)) 1)) ;; big1
              (write-long (elt (_rcPitch . bv) 0) s)
              (write-long (if (>= _rcPitch 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcPitch s)(write-long (if (>= _rcPitch 0) 0 #xffffffff) s)))
     ;; int64 _rcYaw
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcYaw (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcYaw) (= (length (_rcYaw . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcYaw . bv) 0) 0) s)
              (write-long (ash (elt (_rcYaw . bv) 1) -1) s))
             ((and (class _rcYaw) (= (length (_rcYaw . bv)) 1)) ;; big1
              (write-long (elt (_rcYaw . bv) 0) s)
              (write-long (if (>= _rcYaw 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcYaw s)(write-long (if (>= _rcYaw 0) 0 #xffffffff) s)))
     ;; int64 _rcThrottle
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcThrottle (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcThrottle) (= (length (_rcThrottle . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcThrottle . bv) 0) 0) s)
              (write-long (ash (elt (_rcThrottle . bv) 1) -1) s))
             ((and (class _rcThrottle) (= (length (_rcThrottle . bv)) 1)) ;; big1
              (write-long (elt (_rcThrottle . bv) 0) s)
              (write-long (if (>= _rcThrottle 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcThrottle s)(write-long (if (>= _rcThrottle 0) 0 #xffffffff) s)))
     ;; int64 _rcAUX1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcAUX1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcAUX1) (= (length (_rcAUX1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcAUX1 . bv) 0) 0) s)
              (write-long (ash (elt (_rcAUX1 . bv) 1) -1) s))
             ((and (class _rcAUX1) (= (length (_rcAUX1 . bv)) 1)) ;; big1
              (write-long (elt (_rcAUX1 . bv) 0) s)
              (write-long (if (>= _rcAUX1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcAUX1 s)(write-long (if (>= _rcAUX1 0) 0 #xffffffff) s)))
     ;; int64 _rcAUX2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcAUX2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcAUX2) (= (length (_rcAUX2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcAUX2 . bv) 0) 0) s)
              (write-long (ash (elt (_rcAUX2 . bv) 1) -1) s))
             ((and (class _rcAUX2) (= (length (_rcAUX2 . bv)) 1)) ;; big1
              (write-long (elt (_rcAUX2 . bv) 0) s)
              (write-long (if (>= _rcAUX2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcAUX2 s)(write-long (if (>= _rcAUX2 0) 0 #xffffffff) s)))
     ;; int64 _rcAUX3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcAUX3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcAUX3) (= (length (_rcAUX3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcAUX3 . bv) 0) 0) s)
              (write-long (ash (elt (_rcAUX3 . bv) 1) -1) s))
             ((and (class _rcAUX3) (= (length (_rcAUX3 . bv)) 1)) ;; big1
              (write-long (elt (_rcAUX3 . bv) 0) s)
              (write-long (if (>= _rcAUX3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcAUX3 s)(write-long (if (>= _rcAUX3 0) 0 #xffffffff) s)))
     ;; int64 _rcAUX4
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcAUX4 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcAUX4) (= (length (_rcAUX4 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcAUX4 . bv) 0) 0) s)
              (write-long (ash (elt (_rcAUX4 . bv) 1) -1) s))
             ((and (class _rcAUX4) (= (length (_rcAUX4 . bv)) 1)) ;; big1
              (write-long (elt (_rcAUX4 . bv) 0) s)
              (write-long (if (>= _rcAUX4 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcAUX4 s)(write-long (if (>= _rcAUX4 0) 0 #xffffffff) s)))
     ;; int64 _droneIndex
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _droneIndex (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _droneIndex) (= (length (_droneIndex . bv)) 2)) ;; bignum
              (write-long (ash (elt (_droneIndex . bv) 0) 0) s)
              (write-long (ash (elt (_droneIndex . bv) 1) -1) s))
             ((and (class _droneIndex) (= (length (_droneIndex . bv)) 1)) ;; big1
              (write-long (elt (_droneIndex . bv) 0) s)
              (write-long (if (>= _droneIndex 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _droneIndex s)(write-long (if (>= _droneIndex 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _rcRoll
#+(or :alpha :irix6 :x86_64)
      (setf _rcRoll (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcRoll (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcPitch
#+(or :alpha :irix6 :x86_64)
      (setf _rcPitch (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcPitch (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcYaw
#+(or :alpha :irix6 :x86_64)
      (setf _rcYaw (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcYaw (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcThrottle
#+(or :alpha :irix6 :x86_64)
      (setf _rcThrottle (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcThrottle (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcAUX1
#+(or :alpha :irix6 :x86_64)
      (setf _rcAUX1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcAUX1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcAUX2
#+(or :alpha :irix6 :x86_64)
      (setf _rcAUX2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcAUX2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcAUX3
#+(or :alpha :irix6 :x86_64)
      (setf _rcAUX3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcAUX3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcAUX4
#+(or :alpha :irix6 :x86_64)
      (setf _rcAUX4 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcAUX4 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _droneIndex
#+(or :alpha :irix6 :x86_64)
      (setf _droneIndex (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _droneIndex (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get edrone_client::edrone_msgs :md5sum-) "9ba105b46f47730cc85d3e5abd2b281d")
(setf (get edrone_client::edrone_msgs :datatype-) "edrone_client/edrone_msgs")
(setf (get edrone_client::edrone_msgs :definition-)
      "int64 rcRoll
int64 rcPitch
int64 rcYaw
int64 rcThrottle
int64 rcAUX1
int64 rcAUX2
int64 rcAUX3
int64 rcAUX4
int64 droneIndex

")



(provide :edrone_client/edrone_msgs "9ba105b46f47730cc85d3e5abd2b281d")


