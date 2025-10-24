;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::DisplayAllVehicle)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'DisplayAllVehicle (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::DISPLAYALLVEHICLE")
  (make-package "VEHICLE_MANAGER::DISPLAYALLVEHICLE"))
(unless (find-package "VEHICLE_MANAGER::DISPLAYALLVEHICLEREQUEST")
  (make-package "VEHICLE_MANAGER::DISPLAYALLVEHICLEREQUEST"))
(unless (find-package "VEHICLE_MANAGER::DISPLAYALLVEHICLERESPONSE")
  (make-package "VEHICLE_MANAGER::DISPLAYALLVEHICLERESPONSE"))

(in-package "ROS")





(defclass vehicle_manager::DisplayAllVehicleRequest
  :super ros::object
  :slots ())

(defmethod vehicle_manager::DisplayAllVehicleRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass vehicle_manager::DisplayAllVehicleResponse
  :super ros::object
  :slots (_success _message _vehicles ))

(defmethod vehicle_manager::DisplayAllVehicleResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:vehicles __vehicles) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _vehicles __vehicles)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
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
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; vehicle_manager/Vehicle[] _vehicles
    (apply #'+ (send-all _vehicles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; vehicle_manager/Vehicle[] _vehicles
     (write-long (length _vehicles) s)
     (dolist (elem _vehicles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass vehicle_manager::DisplayAllVehicle
  :super ros::object
  :slots ())

(setf (get vehicle_manager::DisplayAllVehicle :md5sum-) "34dc51a34cfcc853d59c1e852e705610")
(setf (get vehicle_manager::DisplayAllVehicle :datatype-) "vehicle_manager/DisplayAllVehicle")
(setf (get vehicle_manager::DisplayAllVehicle :request) vehicle_manager::DisplayAllVehicleRequest)
(setf (get vehicle_manager::DisplayAllVehicle :response) vehicle_manager::DisplayAllVehicleResponse)

(defmethod vehicle_manager::DisplayAllVehicleRequest
  (:response () (instance vehicle_manager::DisplayAllVehicleResponse :init)))

(setf (get vehicle_manager::DisplayAllVehicleRequest :md5sum-) "34dc51a34cfcc853d59c1e852e705610")
(setf (get vehicle_manager::DisplayAllVehicleRequest :datatype-) "vehicle_manager/DisplayAllVehicleRequest")
(setf (get vehicle_manager::DisplayAllVehicleRequest :definition-)
      "
---
bool success
string message
Vehicle[] vehicles

================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
")

(setf (get vehicle_manager::DisplayAllVehicleResponse :md5sum-) "34dc51a34cfcc853d59c1e852e705610")
(setf (get vehicle_manager::DisplayAllVehicleResponse :datatype-) "vehicle_manager/DisplayAllVehicleResponse")
(setf (get vehicle_manager::DisplayAllVehicleResponse :definition-)
      "
---
bool success
string message
Vehicle[] vehicles

================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
")



(provide :vehicle_manager/DisplayAllVehicle "34dc51a34cfcc853d59c1e852e705610")


