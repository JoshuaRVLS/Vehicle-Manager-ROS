; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-srv)


;//! \htmlinclude RegisterVehicle-request.msg.html

(cl:defclass <RegisterVehicle-request> (roslisp-msg-protocol:ros-message)
  ((vehicle
    :reader vehicle
    :initarg :vehicle
    :type vehicle_manager-msg:Vehicle
    :initform (cl:make-instance 'vehicle_manager-msg:Vehicle))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass RegisterVehicle-request (<RegisterVehicle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterVehicle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterVehicle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<RegisterVehicle-request> is deprecated: use vehicle_manager-srv:RegisterVehicle-request instead.")))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <RegisterVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:vehicle-val is deprecated.  Use vehicle_manager-srv:vehicle instead.")
  (vehicle m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <RegisterVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:command-val is deprecated.  Use vehicle_manager-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterVehicle-request>) ostream)
  "Serializes a message object of type '<RegisterVehicle-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterVehicle-request>) istream)
  "Deserializes a message object of type '<RegisterVehicle-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterVehicle-request>)))
  "Returns string type for a service object of type '<RegisterVehicle-request>"
  "vehicle_manager/RegisterVehicleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterVehicle-request)))
  "Returns string type for a service object of type 'RegisterVehicle-request"
  "vehicle_manager/RegisterVehicleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterVehicle-request>)))
  "Returns md5sum for a message object of type '<RegisterVehicle-request>"
  "00a0a814922db1043c61a97c21d2aa61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterVehicle-request)))
  "Returns md5sum for a message object of type 'RegisterVehicle-request"
  "00a0a814922db1043c61a97c21d2aa61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterVehicle-request>)))
  "Returns full string definition for message of type '<RegisterVehicle-request>"
  (cl:format cl:nil "Vehicle vehicle ~%string command~%~%================================================================================~%MSG: vehicle_manager/Vehicle~%uint32 id~%string licensePlate~%string make~%string model~%string year~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterVehicle-request)))
  "Returns full string definition for message of type 'RegisterVehicle-request"
  (cl:format cl:nil "Vehicle vehicle ~%string command~%~%================================================================================~%MSG: vehicle_manager/Vehicle~%uint32 id~%string licensePlate~%string make~%string model~%string year~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterVehicle-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle))
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterVehicle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterVehicle-request
    (cl:cons ':vehicle (vehicle msg))
    (cl:cons ':command (command msg))
))
;//! \htmlinclude RegisterVehicle-response.msg.html

(cl:defclass <RegisterVehicle-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RegisterVehicle-response (<RegisterVehicle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterVehicle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterVehicle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<RegisterVehicle-response> is deprecated: use vehicle_manager-srv:RegisterVehicle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegisterVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:success-val is deprecated.  Use vehicle_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RegisterVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:message-val is deprecated.  Use vehicle_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterVehicle-response>) ostream)
  "Serializes a message object of type '<RegisterVehicle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterVehicle-response>) istream)
  "Deserializes a message object of type '<RegisterVehicle-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterVehicle-response>)))
  "Returns string type for a service object of type '<RegisterVehicle-response>"
  "vehicle_manager/RegisterVehicleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterVehicle-response)))
  "Returns string type for a service object of type 'RegisterVehicle-response"
  "vehicle_manager/RegisterVehicleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterVehicle-response>)))
  "Returns md5sum for a message object of type '<RegisterVehicle-response>"
  "00a0a814922db1043c61a97c21d2aa61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterVehicle-response)))
  "Returns md5sum for a message object of type 'RegisterVehicle-response"
  "00a0a814922db1043c61a97c21d2aa61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterVehicle-response>)))
  "Returns full string definition for message of type '<RegisterVehicle-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterVehicle-response)))
  "Returns full string definition for message of type 'RegisterVehicle-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterVehicle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterVehicle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterVehicle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterVehicle)))
  'RegisterVehicle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterVehicle)))
  'RegisterVehicle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterVehicle)))
  "Returns string type for a service object of type '<RegisterVehicle>"
  "vehicle_manager/RegisterVehicle")