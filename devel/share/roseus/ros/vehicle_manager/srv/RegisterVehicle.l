;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::RegisterVehicle)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'RegisterVehicle (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::REGISTERVEHICLE")
  (make-package "VEHICLE_MANAGER::REGISTERVEHICLE"))
(unless (find-package "VEHICLE_MANAGER::REGISTERVEHICLEREQUEST")
  (make-package "VEHICLE_MANAGER::REGISTERVEHICLEREQUEST"))
(unless (find-package "VEHICLE_MANAGER::REGISTERVEHICLERESPONSE")
  (make-package "VEHICLE_MANAGER::REGISTERVEHICLERESPONSE"))

(in-package "ROS")





(defclass vehicle_manager::RegisterVehicleRequest
  :super ros::object
  :slots (_vehicle _command ))

(defmethod vehicle_manager::RegisterVehicleRequest
  (:init
   (&key
    ((:vehicle __vehicle) (instance vehicle_manager::Vehicle :init))
    ((:command __command) "")
    )
   (send-super :init)
   (setq _vehicle __vehicle)
   (setq _command (string __command))
   self)
  (:vehicle
   (&rest __vehicle)
   (if (keywordp (car __vehicle))
       (send* _vehicle __vehicle)
     (progn
       (if __vehicle (setq _vehicle (car __vehicle)))
       _vehicle)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; vehicle_manager/Vehicle _vehicle
    (send _vehicle :serialization-length)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vehicle_manager/Vehicle _vehicle
       (send _vehicle :serialize s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vehicle_manager/Vehicle _vehicle
     (send _vehicle :deserialize buf ptr-) (incf ptr- (send _vehicle :serialization-length))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vehicle_manager::RegisterVehicleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod vehicle_manager::RegisterVehicleResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vehicle_manager::RegisterVehicle
  :super ros::object
  :slots ())

(setf (get vehicle_manager::RegisterVehicle :md5sum-) "1a7db87ef6c91617de5c2158e1a2248c")
(setf (get vehicle_manager::RegisterVehicle :datatype-) "vehicle_manager/RegisterVehicle")
(setf (get vehicle_manager::RegisterVehicle :request) vehicle_manager::RegisterVehicleRequest)
(setf (get vehicle_manager::RegisterVehicle :response) vehicle_manager::RegisterVehicleResponse)

(defmethod vehicle_manager::RegisterVehicleRequest
  (:response () (instance vehicle_manager::RegisterVehicleResponse :init)))

(setf (get vehicle_manager::RegisterVehicleRequest :md5sum-) "1a7db87ef6c91617de5c2158e1a2248c")
(setf (get vehicle_manager::RegisterVehicleRequest :datatype-) "vehicle_manager/RegisterVehicleRequest")
(setf (get vehicle_manager::RegisterVehicleRequest :definition-)
      "Vehicle vehicle 
string command

================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
---
bool success
string message
")

(setf (get vehicle_manager::RegisterVehicleResponse :md5sum-) "1a7db87ef6c91617de5c2158e1a2248c")
(setf (get vehicle_manager::RegisterVehicleResponse :datatype-) "vehicle_manager/RegisterVehicleResponse")
(setf (get vehicle_manager::RegisterVehicleResponse :definition-)
      "Vehicle vehicle 
string command

================================================================================
MSG: vehicle_manager/Vehicle
string licensePlate
string make
string model
---
bool success
string message
")



(provide :vehicle_manager/RegisterVehicle "1a7db87ef6c91617de5c2158e1a2248c")


