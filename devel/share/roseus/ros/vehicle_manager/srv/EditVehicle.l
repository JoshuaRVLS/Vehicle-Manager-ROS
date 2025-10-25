;; Auto-generated. Do not edit!


(when (boundp 'vehicle_manager::EditVehicle)
  (if (not (find-package "VEHICLE_MANAGER"))
    (make-package "VEHICLE_MANAGER"))
  (shadow 'EditVehicle (find-package "VEHICLE_MANAGER")))
(unless (find-package "VEHICLE_MANAGER::EDITVEHICLE")
  (make-package "VEHICLE_MANAGER::EDITVEHICLE"))
(unless (find-package "VEHICLE_MANAGER::EDITVEHICLEREQUEST")
  (make-package "VEHICLE_MANAGER::EDITVEHICLEREQUEST"))
(unless (find-package "VEHICLE_MANAGER::EDITVEHICLERESPONSE")
  (make-package "VEHICLE_MANAGER::EDITVEHICLERESPONSE"))

(in-package "ROS")





(defclass vehicle_manager::EditVehicleRequest
  :super ros::object
  :slots (_property _vehicle_id _new_value ))

(defmethod vehicle_manager::EditVehicleRequest
  (:init
   (&key
    ((:property __property) "")
    ((:vehicle_id __vehicle_id) 0)
    ((:new_value __new_value) "")
    )
   (send-super :init)
   (setq _property (string __property))
   (setq _vehicle_id (round __vehicle_id))
   (setq _new_value (string __new_value))
   self)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:vehicle_id
   (&optional __vehicle_id)
   (if __vehicle_id (setq _vehicle_id __vehicle_id)) _vehicle_id)
  (:new_value
   (&optional __new_value)
   (if __new_value (setq _new_value __new_value)) _new_value)
  (:serialization-length
   ()
   (+
    ;; string _property
    4 (length _property)
    ;; uint32 _vehicle_id
    4
    ;; string _new_value
    4 (length _new_value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;; uint32 _vehicle_id
       (write-long _vehicle_id s)
     ;; string _new_value
       (write-long (length _new_value) s) (princ _new_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _vehicle_id
     (setq _vehicle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _new_value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vehicle_manager::EditVehicleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod vehicle_manager::EditVehicleResponse
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

(defclass vehicle_manager::EditVehicle
  :super ros::object
  :slots ())

(setf (get vehicle_manager::EditVehicle :md5sum-) "c1e037ffea88992a21a708541cb21c87")
(setf (get vehicle_manager::EditVehicle :datatype-) "vehicle_manager/EditVehicle")
(setf (get vehicle_manager::EditVehicle :request) vehicle_manager::EditVehicleRequest)
(setf (get vehicle_manager::EditVehicle :response) vehicle_manager::EditVehicleResponse)

(defmethod vehicle_manager::EditVehicleRequest
  (:response () (instance vehicle_manager::EditVehicleResponse :init)))

(setf (get vehicle_manager::EditVehicleRequest :md5sum-) "c1e037ffea88992a21a708541cb21c87")
(setf (get vehicle_manager::EditVehicleRequest :datatype-) "vehicle_manager/EditVehicleRequest")
(setf (get vehicle_manager::EditVehicleRequest :definition-)
      "string property
uint32 vehicle_id 
string new_value
---
bool success 
string message
")

(setf (get vehicle_manager::EditVehicleResponse :md5sum-) "c1e037ffea88992a21a708541cb21c87")
(setf (get vehicle_manager::EditVehicleResponse :datatype-) "vehicle_manager/EditVehicleResponse")
(setf (get vehicle_manager::EditVehicleResponse :definition-)
      "string property
uint32 vehicle_id 
string new_value
---
bool success 
string message
")



(provide :vehicle_manager/EditVehicle "c1e037ffea88992a21a708541cb21c87")


