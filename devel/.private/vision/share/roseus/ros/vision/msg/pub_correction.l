;; Auto-generated. Do not edit!


(when (boundp 'vision::pub_correction)
  (if (not (find-package "VISION"))
    (make-package "VISION"))
  (shadow 'pub_correction (find-package "VISION")))
(unless (find-package "VISION::PUB_CORRECTION")
  (make-package "VISION::PUB_CORRECTION"))

(in-package "ROS")
;;//! \htmlinclude pub_correction.msg.html


(defclass vision::pub_correction
  :super ros::object
  :slots (_visionCorrectionPosX _visionCorrectionPosY _visionCorrectionPosT ))

(defmethod vision::pub_correction
  (:init
   (&key
    ((:visionCorrectionPosX __visionCorrectionPosX) 0)
    ((:visionCorrectionPosY __visionCorrectionPosY) 0)
    ((:visionCorrectionPosT __visionCorrectionPosT) 0)
    )
   (send-super :init)
   (setq _visionCorrectionPosX (round __visionCorrectionPosX))
   (setq _visionCorrectionPosY (round __visionCorrectionPosY))
   (setq _visionCorrectionPosT (round __visionCorrectionPosT))
   self)
  (:visionCorrectionPosX
   (&optional __visionCorrectionPosX)
   (if __visionCorrectionPosX (setq _visionCorrectionPosX __visionCorrectionPosX)) _visionCorrectionPosX)
  (:visionCorrectionPosY
   (&optional __visionCorrectionPosY)
   (if __visionCorrectionPosY (setq _visionCorrectionPosY __visionCorrectionPosY)) _visionCorrectionPosY)
  (:visionCorrectionPosT
   (&optional __visionCorrectionPosT)
   (if __visionCorrectionPosT (setq _visionCorrectionPosT __visionCorrectionPosT)) _visionCorrectionPosT)
  (:serialization-length
   ()
   (+
    ;; int16 _visionCorrectionPosX
    2
    ;; int16 _visionCorrectionPosY
    2
    ;; int16 _visionCorrectionPosT
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _visionCorrectionPosX
       (write-word _visionCorrectionPosX s)
     ;; int16 _visionCorrectionPosY
       (write-word _visionCorrectionPosY s)
     ;; int16 _visionCorrectionPosT
       (write-word _visionCorrectionPosT s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _visionCorrectionPosX
     (setq _visionCorrectionPosX (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionCorrectionPosY
     (setq _visionCorrectionPosY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionCorrectionPosT
     (setq _visionCorrectionPosT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get vision::pub_correction :md5sum-) "a0454f97ba8e72f3736158200b3f92c4")
(setf (get vision::pub_correction :datatype-) "vision/pub_correction")
(setf (get vision::pub_correction :definition-)
      "int16 visionCorrectionPosX
int16 visionCorrectionPosY
int16 visionCorrectionPosT





")



(provide :vision/pub_correction "a0454f97ba8e72f3736158200b3f92c4")


