;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::FindVehicle)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'FindVehicle (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::FINDVEHICLE")
  (make-package "VEHICLE_MANAGER::FINDVEHICLE"))
(unless (find-package "VEHICLE_MANAGER::FINDVEHICLEREQUEST")
  (make-package "VEHICLE_MANAGER::FINDVEHICLEREQUEST"))
(unless (find-package "VEHICLE_MANAGER::FINDVEHICLERESPONSE")
  (make-package "VEHICLE_MANAGER::FINDVEHICLERESPONSE"))

(in-package "ROS")





(defclass vehicle_manager::FindVehicleRequest
  :super ros::object
  :slots (_licensePlate ))

(defmethod vehicle_manager::FindVehicleRequest
  (:init
   (&key
    ((:licensePlate __licensePlate) "")
    )
   (send-super :init)
   (setq _licensePlate (string __licensePlate))
   self)
  (:licensePlate
   (&optional __licensePlate)
   (if __licensePlate (setq _licensePlate __licensePlate)) _licensePlate)
  (:serialization-length
   ()
   (+
    ;; string _licensePlate
    4 (length _licensePlate)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _licensePlate
       (write-long (length _licensePlate) s) (princ _licensePlate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _licensePlate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _licensePlate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vehicle_manager::FindVehicleResponse
  :super ros::object
  :slots (_success _message _vehicle ))

(defmethod vehicle_manager::FindVehicleResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:vehicle __vehicle) (instance vehicle_manager::Vehicle :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _vehicle __vehicle)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:vehicle
   (&rest __vehicle)
   (if (keywordp (car __vehicle))
       (send* _vehicle __vehicle)
     (progn
       (if __vehicle (setq _vehicle (car __vehicle)))
       _vehicle)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; vehicle_manager/Vehicle _vehicle
    (send _vehicle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; vehicle_manager/Vehicle _vehicle
       (send _vehicle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; vehicle_manager/Vehicle _vehicle
     (send _vehicle :deserialize buf ptr-) (incf ptr- (send _vehicle :serialization-length))
   ;;
   self)
  )

(defclass vehicle_manager::FindVehicle
  :super ros::object
  :slots ())

(setf (get vehicle_manager::FindVehicle :md5sum-) "4a85880fc8ab4e0e9fa8688f0b93aaf9")
(setf (get vehicle_manager::FindVehicle :datatype-) "vehicle_manager/FindVehicle")
(setf (get vehicle_manager::FindVehicle :request) vehicle_manager::FindVehicleRequest)
(setf (get vehicle_manager::FindVehicle :response) vehicle_manager::FindVehicleResponse)

(defmethod vehicle_manager::FindVehicleRequest
  (:response () (instance vehicle_manager::FindVehicleResponse :init)))

(setf (get vehicle_manager::FindVehicleRequest :md5sum-) "4a85880fc8ab4e0e9fa8688f0b93aaf9")
(setf (get vehicle_manager::FindVehicleRequest :datatype-) "vehicle_manager/FindVehicleRequest")
(setf (get vehicle_manager::FindVehicleRequest :definition-)
      "string licensePlate
---
bool success
string message
Vehicle vehicle

================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
")

(setf (get vehicle_manager::FindVehicleResponse :md5sum-) "4a85880fc8ab4e0e9fa8688f0b93aaf9")
(setf (get vehicle_manager::FindVehicleResponse :datatype-) "vehicle_manager/FindVehicleResponse")
(setf (get vehicle_manager::FindVehicleResponse :definition-)
      "string licensePlate
---
bool success
string message
Vehicle vehicle

================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
")



(provide :vehicle_manager/FindVehicle "4a85880fc8ab4e0e9fa8688f0b93aaf9")


