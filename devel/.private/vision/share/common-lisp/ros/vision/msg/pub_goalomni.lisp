; Auto-generated. Do not edit!


(cl:in-package vision-msg)


;//! \htmlinclude pub_goalomni.msg.html

(cl:defclass <pub_goalomni> (roslisp-msg-protocol:ros-message)
  ((visionGawangPosX
    :reader visionGawangPosX
    :initarg :visionGawangPosX
    :type cl:fixnum
    :initform 0)
   (visionGawangPosY
    :reader visionGawangPosY
    :initarg :visionGawangPosY
    :type cl:fixnum
    :initform 0)
   (visionGawangPosT
    :reader visionGawangPosT
    :initarg :visionGawangPosT
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pub_goalomni (<pub_goalomni>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pub_goalomni>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pub_goalomni)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision-msg:<pub_goalomni> is deprecated: use vision-msg:pub_goalomni instead.")))

(cl:ensure-generic-function 'visionGawangPosX-val :lambda-list '(m))
(cl:defmethod visionGawangPosX-val ((m <pub_goalomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionGawangPosX-val is deprecated.  Use vision-msg:visionGawangPosX instead.")
  (visionGawangPosX m))

(cl:ensure-generic-function 'visionGawangPosY-val :lambda-list '(m))
(cl:defmethod visionGawangPosY-val ((m <pub_goalomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionGawangPosY-val is deprecated.  Use vision-msg:visionGawangPosY instead.")
  (visionGawangPosY m))

(cl:ensure-generic-function 'visionGawangPosT-val :lambda-list '(m))
(cl:defmethod visionGawangPosT-val ((m <pub_goalomni>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision-msg:visionGawangPosT-val is deprecated.  Use vision-msg:visionGawangPosT instead.")
  (visionGawangPosT m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pub_goalomni>) ostream)
  "Serializes a message object of type '<pub_goalomni>"
  (cl:let* ((signed (cl:slot-value msg 'visionGawangPosX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionGawangPosY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visionGawangPosT)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pub_goalomni>) istream)
  "Deserializes a message object of type '<pub_goalomni>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionGawangPosX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionGawangPosY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visionGawangPosT) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pub_goalomni>)))
  "Returns string type for a message object of type '<pub_goalomni>"
  "vision/pub_goalomni")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pub_goalomni)))
  "Returns string type for a message object of type 'pub_goalomni"
  "vision/pub_goalomni")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pub_goalomni>)))
  "Returns md5sum for a message object of type '<pub_goalomni>"
  "644b097232c29cc53a954f9c2eb28199")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pub_goalomni)))
  "Returns md5sum for a message object of type 'pub_goalomni"
  "644b097232c29cc53a954f9c2eb28199")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pub_goalomni>)))
  "Returns full string definition for message of type '<pub_goalomni>"
  (cl:format cl:nil "int16 visionGawangPosX ~%int16 visionGawangPosY~%int16 visionGawangPosT ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pub_goalomni)))
  "Returns full string definition for message of type 'pub_goalomni"
  (cl:format cl:nil "int16 visionGawangPosX ~%int16 visionGawangPosY~%int16 visionGawangPosT ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pub_goalomni>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pub_goalomni>))
  "Converts a ROS message object to a list"
  (cl:list 'pub_goalomni
    (cl:cons ':visionGawangPosX (visionGawangPosX msg))
    (cl:cons ':visionGawangPosY (visionGawangPosY msg))
    (cl:cons ':visionGawangPosT (visionGawangPosT msg))
))
