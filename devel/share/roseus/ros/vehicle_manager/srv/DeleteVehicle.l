;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::DeleteVehicle)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'DeleteVehicle (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::DELETEVEHICLE")
  (make-package "VEHICLE_MANAGER::DELETEVEHICLE"))
(unless (find-package "VEHICLE_MANAGER::DELETEVEHICLEREQUEST")
  (make-package "VEHICLE_MANAGER::DELETEVEHICLEREQUEST"))
(unless (find-package "VEHICLE_MANAGER::DELETEVEHICLERESPONSE")
  (make-package "VEHICLE_MANAGER::DELETEVEHICLERESPONSE"))

(in-package "ROS")





(defclass vehicle_manager::DeleteVehicleRequest
  :super ros::object
  :slots (_vehicle_id ))

(defmethod vehicle_manager::DeleteVehicleRequest
  (:init
   (&key
    ((:vehicle_id __vehicle_id) 0)
    )
   (send-super :init)
   (setq _vehicle_id (round __vehicle_id))
   self)
  (:vehicle_id
   (&optional __vehicle_id)
   (if __vehicle_id (setq _vehicle_id __vehicle_id)) _vehicle_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _vehicle_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _vehicle_id
       (write-long _vehicle_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _vehicle_id
     (setq _vehicle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vehicle_manager::DeleteVehicleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod vehicle_manager::DeleteVehicleResponse
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

(defclass vehicle_manager::DeleteVehicle
  :super ros::object
  :slots ())

(setf (get vehicle_manager::DeleteVehicle :md5sum-) "26021b5c78adc94a5ca3e835030134b8")
(setf (get vehicle_manager::DeleteVehicle :datatype-) "vehicle_manager/DeleteVehicle")
(setf (get vehicle_manager::DeleteVehicle :request) vehicle_manager::DeleteVehicleRequest)
(setf (get vehicle_manager::DeleteVehicle :response) vehicle_manager::DeleteVehicleResponse)

(defmethod vehicle_manager::DeleteVehicleRequest
  (:response () (instance vehicle_manager::DeleteVehicleResponse :init)))

(setf (get vehicle_manager::DeleteVehicleRequest :md5sum-) "26021b5c78adc94a5ca3e835030134b8")
(setf (get vehicle_manager::DeleteVehicleRequest :datatype-) "vehicle_manager/DeleteVehicleRequest")
(setf (get vehicle_manager::DeleteVehicleRequest :definition-)
      "uint32 vehicle_id 
---
bool success
string message
")

(setf (get vehicle_manager::DeleteVehicleResponse :md5sum-) "26021b5c78adc94a5ca3e835030134b8")
(setf (get vehicle_manager::DeleteVehicleResponse :datatype-) "vehicle_manager/DeleteVehicleResponse")
(setf (get vehicle_manager::DeleteVehicleResponse :definition-)
      "uint32 vehicle_id 
---
bool success
string message
")



(provide :vehicle_manager/DeleteVehicle "26021b5c78adc94a5ca3e835030134b8")


