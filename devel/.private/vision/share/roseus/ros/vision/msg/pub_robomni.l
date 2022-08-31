;; Auto-generated. Do not edit!


(when (boundp 'vision::pub_robomni)
  (if (not (find-package "VISION"))
    (make-package "VISION"))
  (shadow 'pub_robomni (find-package "VISION")))
(unless (find-package "VISION::PUB_ROBOMNI")
  (make-package "VISION::PUB_ROBOMNI"))

(in-package "ROS")
;;//! \htmlinclude pub_robomni.msg.html


(defclass vision::pub_robomni
  :super ros::object
  :slots (_obst1X _obst1Y _obst1R _obst1detect _visionRobotPosX _visionRobotPosY _visionRobotPosT ))

(defmethod vision::pub_robomni
  (:init
   (&key
    ((:obst1X __obst1X) 0)
    ((:obst1Y __obst1Y) 0)
    ((:obst1R __obst1R) 0)
    ((:obst1detect __obst1detect) 0)
    ((:visionRobotPosX __visionRobotPosX) 0)
    ((:visionRobotPosY __visionRobotPosY) 0)
    ((:visionRobotPosT __visionRobotPosT) 0)
    )
   (send-super :init)
   (setq _obst1X (round __obst1X))
   (setq _obst1Y (round __obst1Y))
   (setq _obst1R (round __obst1R))
   (setq _obst1detect (round __obst1detect))
   (setq _visionRobotPosX (round __visionRobotPosX))
   (setq _visionRobotPosY (round __visionRobotPosY))
   (setq _visionRobotPosT (round __visionRobotPosT))
   self)
  (:obst1X
   (&optional __obst1X)
   (if __obst1X (setq _obst1X __obst1X)) _obst1X)
  (:obst1Y
   (&optional __obst1Y)
   (if __obst1Y (setq _obst1Y __obst1Y)) _obst1Y)
  (:obst1R
   (&optional __obst1R)
   (if __obst1R (setq _obst1R __obst1R)) _obst1R)
  (:obst1detect
   (&optional __obst1detect)
   (if __obst1detect (setq _obst1detect __obst1detect)) _obst1detect)
  (:visionRobotPosX
   (&optional __visionRobotPosX)
   (if __visionRobotPosX (setq _visionRobotPosX __visionRobotPosX)) _visionRobotPosX)
  (:visionRobotPosY
   (&optional __visionRobotPosY)
   (if __visionRobotPosY (setq _visionRobotPosY __visionRobotPosY)) _visionRobotPosY)
  (:visionRobotPosT
   (&optional __visionRobotPosT)
   (if __visionRobotPosT (setq _visionRobotPosT __visionRobotPosT)) _visionRobotPosT)
  (:serialization-length
   ()
   (+
    ;; int16 _obst1X
    2
    ;; int16 _obst1Y
    2
    ;; int16 _obst1R
    2
    ;; int16 _obst1detect
    2
    ;; int16 _visionRobotPosX
    2
    ;; int16 _visionRobotPosY
    2
    ;; int16 _visionRobotPosT
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _obst1X
       (write-word _obst1X s)
     ;; int16 _obst1Y
       (write-word _obst1Y s)
     ;; int16 _obst1R
       (write-word _obst1R s)
     ;; int16 _obst1detect
       (write-word _obst1detect s)
     ;; int16 _visionRobotPosX
       (write-word _visionRobotPosX s)
     ;; int16 _visionRobotPosY
       (write-word _visionRobotPosY s)
     ;; int16 _visionRobotPosT
       (write-word _visionRobotPosT s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _obst1X
     (setq _obst1X (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _obst1Y
     (setq _obst1Y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _obst1R
     (setq _obst1R (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _obst1detect
     (setq _obst1detect (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionRobotPosX
     (setq _visionRobotPosX (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionRobotPosY
     (setq _visionRobotPosY (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _visionRobotPosT
     (setq _visionRobotPosT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get vision::pub_robomni :md5sum-) "b87a415b121fcf00a877a1ae0c010a4d")
(setf (get vision::pub_robomni :datatype-) "vision/pub_robomni")
(setf (get vision::pub_robomni :definition-)
      "int16 obst1X 
int16 obst1Y
int16 obst1R
int16 obst1detect 

int16 visionRobotPosX
int16 visionRobotPosY
int16 visionRobotPosT

")



(provide :vision/pub_robomni "b87a415b121fcf00a877a1ae0c010a4d")


