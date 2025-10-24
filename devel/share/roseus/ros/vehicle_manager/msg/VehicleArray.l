;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::VehicleArray)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'VehicleArray (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::VEHICLEARRAY")
  (make-package "VEHICLE_MANAGER::VEHICLEARRAY"))

(in-package "ROS")
;;//! \htmlinclude VehicleArray.msg.html


(defclass vehicle_manager::VehicleArray
  :super ros::object
  :slots (_vehicles ))

(defmethod vehicle_manager::VehicleArray
  (:init
   (&key
    ((:vehicles __vehicles) ())
    )
   (send-super :init)
   (setq _vehicles __vehicles)
   self)
  (:vehicles
   (&rest __vehicles)
   (if (keywordp (car __vehicles))
       (send* _vehicles __vehicles)
     (progn
       (if __vehicles (setq _vehicles (car __vehicles)))
       _vehicles)))
  (:serialization-length
   ()
   (+
    ;; vehicle_manager/Vehicle[] _vehicles
    (apply #'+ (send-all _vehicles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vehicle_manager/Vehicle[] _vehicles
     (write-long (length _vehicles) s)
     (dolist (elem _vehicles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vehicle_manager/Vehicle[] _vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicles (let (r) (dotimes (i n) (push (instance vehicle_manager::Vehicle :init) r)) r))
     (dolist (elem- _vehicles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vehicle_manager::VehicleArray :md5sum-) "ee22c20781e6ace64b3a920182332896")
(setf (get vehicle_manager::VehicleArray :datatype-) "vehicle_manager/VehicleArray")
(setf (get vehicle_manager::VehicleArray :definition-)
      "Vehicle[] vehicles
================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
uint32 year
")



(provide :vehicle_manager/VehicleArray "ee22c20781e6ace64b3a920182332896")


