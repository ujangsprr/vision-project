; Auto-generated. Do not edit!


(cl:in-package vision-msg)


;//! \htmlinclude pub_correction.msg.html

(cl:defclass <pub_correction> (roslisp-msg-protocol:ros-message)
  ((visionCorrectionPosX
    :reader visionCorrectionPosX
    :initarg :visionCorrectionPosX
    :type cl:fixnum
    :initform 0)
   (visionCorrectionPosY
    :reader visionCorrectionPosY
    :initarg :visionCorrectionPosY
    :type cl:fixnum
    :initform 0)
   (visionCorrectionPosT
    :reader visionCorrectionPosT
    :initarg :visionCorrectionPosT
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pub_correction (<pub_correction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pub_correction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pub_correction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision-msg:<pub_correction> is deprecated: use vision-msg:pub_correction instead.")))

(cl:ensure-generic-function 'visionCorrectionPosX-val :lambda-list '(m))
(cl:defmethod visionCorrectionPosX-val ((m <pub_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionCorrectionPosX-val is deprecated.  Use vision-msg:visionCorrectionPosX instead.")
  (visionCorrectionPosX m))

(cl:ensure-generic-function 'visionCorrectionPosY-val :lambda-list '(m))
(cl:defmethod visionCorrectionPosY-val ((m <pub_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionCorrectionPosY-val is deprecated.  Use vision-msg:visionCorrectionPosY instead.")
  (visionCorrectionPosY m))

(cl:ensure-generic-function 'visionCorrectionPosT-val :lambda-list '(m))
(cl:defmethod visionCorrectionPosT-val ((m <pub_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionCorrectionPosT-val is deprecated.  Use vision-msg:visionCorrectionPosT instead.")
  (visionCorrectionPosT m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pub_correction>) ostream)
  "Serializes a message object of type '<pub_correction>"
  (cl:let* ((signed (cl:slot-value msg 'visionCorrectionPosX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionCorrectionPosY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionCorrectionPosT)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pub_correction>) istream)
  "Deserializes a message object of type '<pub_correction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionCorrectionPosX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionCorrectionPosY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionCorrectionPosT) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pub_correction>)))
  "Returns string type for a message object of type '<pub_correction>"
  "vision/pub_correction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pub_correction)))
  "Returns string type for a message object of type 'pub_correction"
  "vision/pub_correction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pub_correction>)))
  "Returns md5sum for a message object of type '<pub_correction>"
  "a0454f97ba8e72f3736158200b3f92c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pub_correction)))
  "Returns md5sum for a message object of type 'pub_correction"
  "a0454f97ba8e72f3736158200b3f92c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pub_correction>)))
  "Returns full string definition for message of type '<pub_correction>"
  (cl:format cl:nil "int16 visionCorrectionPosX~%int16 visionCorrectionPosY~%int16 visionCorrectionPosT~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pub_correction)))
  "Returns full string definition for message of type 'pub_correction"
  (cl:format cl:nil "int16 visionCorrectionPosX~%int16 visionCorrectionPosY~%int16 visionCorrectionPosT~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pub_correction>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pub_correction>))
  "Converts a ROS message object to a list"
  (cl:list 'pub_correction
    (cl:cons ':visionCorrectionPosX (visionCorrectionPosX msg))
    (cl:cons ':visionCorrectionPosY (visionCorrectionPosY msg))
    (cl:cons ':visionCorrectionPosT (visionCorrectionPosT msg))
))
