; Auto-generated. Do not edit!


(cl:in-package vision-msg)


;//! \htmlinclude pub_robomni.msg.html

(cl:defclass <pub_robomni> (roslisp-msg-protocol:ros-message)
  ((obst1X
    :reader obst1X
    :initarg :obst1X
    :type cl:fixnum
    :initform 0)
   (obst1Y
    :reader obst1Y
    :initarg :obst1Y
    :type cl:fixnum
    :initform 0)
   (obst1R
    :reader obst1R
    :initarg :obst1R
    :type cl:fixnum
    :initform 0)
   (obst1detect
    :reader obst1detect
    :initarg :obst1detect
    :type cl:fixnum
    :initform 0)
   (visionRobotPosX
    :reader visionRobotPosX
    :initarg :visionRobotPosX
    :type cl:fixnum
    :initform 0)
   (visionRobotPosY
    :reader visionRobotPosY
    :initarg :visionRobotPosY
    :type cl:fixnum
    :initform 0)
   (visionRobotPosT
    :reader visionRobotPosT
    :initarg :visionRobotPosT
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pub_robomni (<pub_robomni>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pub_robomni>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pub_robomni)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision-msg:<pub_robomni> is deprecated: use vision-msg:pub_robomni instead.")))

(cl:ensure-generic-function 'obst1X-val :lambda-list '(m))
(cl:defmethod obst1X-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:obst1X-val is deprecated.  Use vision-msg:obst1X instead.")
  (obst1X m))

(cl:ensure-generic-function 'obst1Y-val :lambda-list '(m))
(cl:defmethod obst1Y-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:obst1Y-val is deprecated.  Use vision-msg:obst1Y instead.")
  (obst1Y m))

(cl:ensure-generic-function 'obst1R-val :lambda-list '(m))
(cl:defmethod obst1R-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:obst1R-val is deprecated.  Use vision-msg:obst1R instead.")
  (obst1R m))

(cl:ensure-generic-function 'obst1detect-val :lambda-list '(m))
(cl:defmethod obst1detect-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:obst1detect-val is deprecated.  Use vision-msg:obst1detect instead.")
  (obst1detect m))

(cl:ensure-generic-function 'visionRobotPosX-val :lambda-list '(m))
(cl:defmethod visionRobotPosX-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionRobotPosX-val is deprecated.  Use vision-msg:visionRobotPosX instead.")
  (visionRobotPosX m))

(cl:ensure-generic-function 'visionRobotPosY-val :lambda-list '(m))
(cl:defmethod visionRobotPosY-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionRobotPosY-val is deprecated.  Use vision-msg:visionRobotPosY instead.")
  (visionRobotPosY m))

(cl:ensure-generic-function 'visionRobotPosT-val :lambda-list '(m))
(cl:defmethod visionRobotPosT-val ((m <pub_robomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionRobotPosT-val is deprecated.  Use vision-msg:visionRobotPosT instead.")
  (visionRobotPosT m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pub_robomni>) ostream)
  "Serializes a message object of type '<pub_robomni>"
  (cl:let* ((signed (cl:slot-value msg 'obst1X)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'obst1Y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'obst1R)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'obst1detect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionRobotPosX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionRobotPosY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionRobotPosT)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pub_robomni>) istream)
  "Deserializes a message object of type '<pub_robomni>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obst1X) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obst1Y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obst1R) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obst1detect) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionRobotPosX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionRobotPosY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionRobotPosT) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pub_robomni>)))
  "Returns string type for a message object of type '<pub_robomni>"
  "vision/pub_robomni")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pub_robomni)))
  "Returns string type for a message object of type 'pub_robomni"
  "vision/pub_robomni")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pub_robomni>)))
  "Returns md5sum for a message object of type '<pub_robomni>"
  "b87a415b121fcf00a877a1ae0c010a4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pub_robomni)))
  "Returns md5sum for a message object of type 'pub_robomni"
  "b87a415b121fcf00a877a1ae0c010a4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pub_robomni>)))
  "Returns full string definition for message of type '<pub_robomni>"
  (cl:format cl:nil "int16 obst1X ~%int16 obst1Y~%int16 obst1R~%int16 obst1detect ~%~%int16 visionRobotPosX~%int16 visionRobotPosY~%int16 visionRobotPosT~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pub_robomni)))
  "Returns full string definition for message of type 'pub_robomni"
  (cl:format cl:nil "int16 obst1X ~%int16 obst1Y~%int16 obst1R~%int16 obst1detect ~%~%int16 visionRobotPosX~%int16 visionRobotPosY~%int16 visionRobotPosT~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pub_robomni>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pub_robomni>))
  "Converts a ROS message object to a list"
  (cl:list 'pub_robomni
    (cl:cons ':obst1X (obst1X msg))
    (cl:cons ':obst1Y (obst1Y msg))
    (cl:cons ':obst1R (obst1R msg))
    (cl:cons ':obst1detect (obst1detect msg))
    (cl:cons ':visionRobotPosX (visionRobotPosX msg))
    (cl:cons ':visionRobotPosY (visionRobotPosY msg))
    (cl:cons ':visionRobotPosT (visionRobotPosT msg))
))
