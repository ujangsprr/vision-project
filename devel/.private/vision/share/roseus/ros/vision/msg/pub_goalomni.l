;; Auto-generated. Do not edit!


(when (boundp 'vision::pub_goalomni)
  (if (not (find-package "VISION"))
    (make-package "VISION"))
  (shadow 'pub_goalomni (find-package "VISION")))
(unless (find-package "VISION::PUB_GOALOMNI")
  (make-package "VISION::PUB_GOALOMNI"))

(in-package "ROS")
;;//! \htmlinclude pub_goalomni.msg.html


(defclass vision::pub_goalomni
  :super ros::object
  :slots (_visionGawangPosX _visionGawangPosY _visionGawangPosT ))

(defmethod vision::pub_goalomni
  (:init
   (&key
    ((:visionGawangPosX __visionGawangPosX) 0)
    ((:visionGawangPosY __visionGawangPosY) 0)
    ((:visionGawangPosT __visionGawangPosT) 0)
    )
   (send-super :init)
   (setq _visionGawangPosX (round __visionGawangPosX))
   (setq _visionGawangPosY (round __visionGawangPosY))
   (setq _visionGawangPosT (round __visionGawangPosT))
   self)
  (:visionGawangPosX
   (&optional __visionGawangPosX)
   (if __visionGawangPosX (setq _visionGawangPosX __visionGawangPosX)) _visionGawangPosX)
  (:visionGawangPosY
   (&optional __visionGawangPosY)
   (if __visionGawangPosY (setq _visionGawangPosY __visionGawangPosY)) _visionGawangPosY)
  (:visionGawangPosT
   (&optional __visionGawangPosT)
   (if __visionGawangPosT (setq _visionGawangPosT __visionGawangPosT)) _visionGawangPosT)
  (:serialization-length
   ()
   (+
    ;; int16 _visionGawangPosX
    2
    ;; int16 _visionGawangPosY
    2
    ;; int16 _visionGawangPosT
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _visionGawangPosX
       (write-word _visionGawangPosX s)
     ;; int16 _visionGawangPosY
       (write-word _visionGawangPosY s)
     ;; int16 _visionGawangPosT
       (write-word _visionGawangPosT s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _visionGawangPosX
     (setq _visionGawangPosX (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionGawangPosY
     (setq _visionGawangPosY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionGawangPosT
     (setq _visionGawangPosT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get vision::pub_goalomni :md5sum-) "644b097232c29cc53a954f9c2eb28199")
(setf (get vision::pub_goalomni :datatype-) "vision/pub_goalomni")
(setf (get vision::pub_goalomni :definition-)
      "int16 visionGawangPosX 
int16 visionGawangPosY
int16 visionGawangPosT 



")



(provide :vision/pub_goalomni "644b097232c29cc53a954f9c2eb28199")


