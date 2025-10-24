; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-msg)


;//! \htmlinclude VehicleArray.msg.html

(cl:defclass <VehicleArray> (roslisp-msg-protocol:ros-message)
  ((vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector vehicle_manager-msg:Vehicle)
   :initform (cl:make-array 0 :element-type 'vehicle_manager-msg:Vehicle :initial-element (cl:make-instance 'vehicle_manager-msg:Vehicle))))
)

(cl:defclass VehicleArray (<VehicleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-msg:<VehicleArray> is deprecated: use vehicle_manager-msg:VehicleArray instead.")))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <VehicleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-msg:vehicles-val is deprecated.  Use vehicle_manager-msg:vehicles instead.")
  (vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleArray>) ostream)
  "Serializes a message object of type '<VehicleArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleArray>) istream)
  "Deserializes a message object of type '<VehicleArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vehicle_manager-msg:Vehicle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleArray>)))
  "Returns string type for a message object of type '<VehicleArray>"
  "vehicle_manager/VehicleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleArray)))
  "Returns string type for a message object of type 'VehicleArray"
  "vehicle_manager/VehicleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleArray>)))
  "Returns md5sum for a message object of type '<VehicleArray>"
  "ee22c20781e6ace64b3a920182332896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleArray)))
  "Returns md5sum for a message object of type 'VehicleArray"
  "ee22c20781e6ace64b3a920182332896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleArray>)))
  "Returns full string definition for message of type '<VehicleArray>"
  (cl:format cl:nil "Vehicle[] vehicles~%================================================================================~%MSG: vehicle_manager/Vehicle~%string licensePlate~%string make~%string model~%uint32 year~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleArray)))
  "Returns full string definition for message of type 'VehicleArray"
  (cl:format cl:nil "Vehicle[] vehicles~%================================================================================~%MSG: vehicle_manager/Vehicle~%string licensePlate~%string make~%string model~%uint32 year~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleArray
    (cl:cons ':vehicles (vehicles msg))
))
