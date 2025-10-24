; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-srv)


;//! \htmlinclude DisplayAllVehicle-request.msg.html

(cl:defclass <DisplayAllVehicle-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DisplayAllVehicle-request (<DisplayAllVehicle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisplayAllVehicle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisplayAllVehicle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<DisplayAllVehicle-request> is deprecated: use vehicle_manager-srv:DisplayAllVehicle-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisplayAllVehicle-request>) ostream)
  "Serializes a message object of type '<DisplayAllVehicle-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisplayAllVehicle-request>) istream)
  "Deserializes a message object of type '<DisplayAllVehicle-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisplayAllVehicle-request>)))
  "Returns string type for a service object of type '<DisplayAllVehicle-request>"
  "vehicle_manager/DisplayAllVehicleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisplayAllVehicle-request)))
  "Returns string type for a service object of type 'DisplayAllVehicle-request"
  "vehicle_manager/DisplayAllVehicleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisplayAllVehicle-request>)))
  "Returns md5sum for a message object of type '<DisplayAllVehicle-request>"
  "34dc51a34cfcc853d59c1e852e705610")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisplayAllVehicle-request)))
  "Returns md5sum for a message object of type 'DisplayAllVehicle-request"
  "34dc51a34cfcc853d59c1e852e705610")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisplayAllVehicle-request>)))
  "Returns full string definition for message of type '<DisplayAllVehicle-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisplayAllVehicle-request)))
  "Returns full string definition for message of type 'DisplayAllVehicle-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisplayAllVehicle-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisplayAllVehicle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DisplayAllVehicle-request
))
;//! \htmlinclude DisplayAllVehicle-response.msg.html

(cl:defclass <DisplayAllVehicle-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector vehicle_manager-msg:Vehicle)
   :initform (cl:make-array 0 :element-type 'vehicle_manager-msg:Vehicle :initial-element (cl:make-instance 'vehicle_manager-msg:Vehicle))))
)

(cl:defclass DisplayAllVehicle-response (<DisplayAllVehicle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisplayAllVehicle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisplayAllVehicle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<DisplayAllVehicle-response> is deprecated: use vehicle_manager-srv:DisplayAllVehicle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DisplayAllVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:success-val is deprecated.  Use vehicle_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DisplayAllVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:message-val is deprecated.  Use vehicle_manager-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <DisplayAllVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:vehicles-val is deprecated.  Use vehicle_manager-srv:vehicles instead.")
  (vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisplayAllVehicle-response>) ostream)
  "Serializes a message object of type '<DisplayAllVehicle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisplayAllVehicle-response>) istream)
  "Deserializes a message object of type '<DisplayAllVehicle-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisplayAllVehicle-response>)))
  "Returns string type for a service object of type '<DisplayAllVehicle-response>"
  "vehicle_manager/DisplayAllVehicleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisplayAllVehicle-response)))
  "Returns string type for a service object of type 'DisplayAllVehicle-response"
  "vehicle_manager/DisplayAllVehicleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisplayAllVehicle-response>)))
  "Returns md5sum for a message object of type '<DisplayAllVehicle-response>"
  "34dc51a34cfcc853d59c1e852e705610")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisplayAllVehicle-response)))
  "Returns md5sum for a message object of type 'DisplayAllVehicle-response"
  "34dc51a34cfcc853d59c1e852e705610")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisplayAllVehicle-response>)))
  "Returns full string definition for message of type '<DisplayAllVehicle-response>"
  (cl:format cl:nil "bool success~%string message~%Vehicle[] vehicles~%~%================================================================================~%MSG: vehicle_manager/Vehicle~%string licensePlate~%string make~%string model~%uint32 year~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisplayAllVehicle-response)))
  "Returns full string definition for message of type 'DisplayAllVehicle-response"
  (cl:format cl:nil "bool success~%string message~%Vehicle[] vehicles~%~%================================================================================~%MSG: vehicle_manager/Vehicle~%string licensePlate~%string make~%string model~%uint32 year~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisplayAllVehicle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisplayAllVehicle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DisplayAllVehicle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':vehicles (vehicles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DisplayAllVehicle)))
  'DisplayAllVehicle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DisplayAllVehicle)))
  'DisplayAllVehicle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisplayAllVehicle)))
  "Returns string type for a service object of type '<DisplayAllVehicle>"
  "vehicle_manager/DisplayAllVehicle")