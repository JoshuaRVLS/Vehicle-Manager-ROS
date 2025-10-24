;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::Vehicle)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'Vehicle (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::VEHICLE")
  (make-package "VEHICLE_MANAGER::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html


(defclass vehicle_manager::Vehicle
  :super ros::object
  :slots (_licensePlate _make _model _year ))

(defmethod vehicle_manager::Vehicle
  (:init
   (&key
    ((:licensePlate __licensePlate) "")
    ((:make __make) "")
    ((:model __model) "")
    ((:year __year) 0)
    )
   (send-super :init)
   (setq _licensePlate (string __licensePlate))
   (setq _make (string __make))
   (setq _model (string __model))
   (setq _year (round __year))
   self)
  (:licensePlate
   (&optional __licensePlate)
   (if __licensePlate (setq _licensePlate __licensePlate)) _licensePlate)
  (:make
   (&optional __make)
   (if __make (setq _make __make)) _make)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:serialization-length
   ()
   (+
    ;; string _licensePlate
    4 (length _licensePlate)
    ;; string _make
    4 (length _make)
    ;; string _model
    4 (length _model)
    ;; uint32 _year
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _licensePlate
       (write-long (length _licensePlate) s) (princ _licensePlate s)
     ;; string _make
       (write-long (length _make) s) (princ _make s)
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; uint32 _year
       (write-long _year s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _licensePlate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _licensePlate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _make
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _make (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _year
     (setq _year (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vehicle_manager::Vehicle :md5sum-) "479b39ca288c27764f2c6215160e4663")
(setf (get vehicle_manager::Vehicle :datatype-) "vehicle_manager/Vehicle")
(setf (get vehicle_manager::Vehicle :definition-)
      "string licensePlate
string make
string model
uint32 year
")



(provide :vehicle_manager/Vehicle "479b39ca288c27764f2c6215160e4663")


