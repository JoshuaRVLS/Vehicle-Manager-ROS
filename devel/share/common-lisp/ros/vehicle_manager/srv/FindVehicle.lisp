; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-srv)


;//! \htmlinclude FindVehicle-request.msg.html

(cl:defclass <FindVehicle-request> (roslisp-msg-protocol:ros-message)
  ((licensePlate
    :reader licensePlate
    :initarg :licensePlate
    :type cl:string
    :initform ""))
)

(cl:defclass FindVehicle-request (<FindVehicle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindVehicle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindVehicle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<FindVehicle-request> is deprecated: use vehicle_manager-srv:FindVehicle-request instead.")))

(cl:ensure-generic-function 'licensePlate-val :lambda-list '(m))
(cl:defmethod licensePlate-val ((m <FindVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:licensePlate-val is deprecated.  Use vehicle_manager-srv:licensePlate instead.")
  (licensePlate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindVehicle-request>) ostream)
  "Serializes a message object of type '<FindVehicle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'licensePlate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'licensePlate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindVehicle-request>) istream)
  "Deserializes a message object of type '<FindVehicle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'licensePlate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'licensePlate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindVehicle-request>)))
  "Returns string type for a service object of type '<FindVehicle-request>"
  "vehicle_manager/FindVehicleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindVehicle-request)))
  "Returns string type for a service object of type 'FindVehicle-request"
  "vehicle_manager/FindVehicleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindVehicle-request>)))
  "Returns md5sum for a message object of type '<FindVehicle-request>"
  "b36034dc7d45586e0c9a9301ebcb2c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindVehicle-request)))
  "Returns md5sum for a message object of type 'FindVehicle-request"
  "b36034dc7d45586e0c9a9301ebcb2c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindVehicle-request>)))
  "Returns full string definition for message of type '<FindVehicle-request>"
  (cl:format cl:nil "string licensePlate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindVehicle-request)))
  "Returns full string definition for message of type 'FindVehicle-request"
  (cl:format cl:nil "string licensePlate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindVehicle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'licensePlate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindVehicle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindVehicle-request
    (cl:cons ':licensePlate (licensePlate msg))
))
;//! \htmlinclude FindVehicle-response.msg.html

(cl:defclass <FindVehicle-response> (roslisp-msg-protocol:ros-message)
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
   (vehicle
    :reader vehicle
    :initarg :vehicle
    :type vehicle_manager-msg:Vehicle
    :initform (cl:make-instance 'vehicle_manager-msg:Vehicle)))
)

(cl:defclass FindVehicle-response (<FindVehicle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindVehicle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindVehicle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<FindVehicle-response> is deprecated: use vehicle_manager-srv:FindVehicle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FindVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:success-val is deprecated.  Use vehicle_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FindVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:message-val is deprecated.  Use vehicle_manager-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <FindVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:vehicle-val is deprecated.  Use vehicle_manager-srv:vehicle instead.")
  (vehicle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindVehicle-response>) ostream)
  "Serializes a message object of type '<FindVehicle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindVehicle-response>) istream)
  "Deserializes a message object of type '<FindVehicle-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindVehicle-response>)))
  "Returns string type for a service object of type '<FindVehicle-response>"
  "vehicle_manager/FindVehicleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindVehicle-response)))
  "Returns string type for a service object of type 'FindVehicle-response"
  "vehicle_manager/FindVehicleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindVehicle-response>)))
  "Returns md5sum for a message object of type '<FindVehicle-response>"
  "b36034dc7d45586e0c9a9301ebcb2c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindVehicle-response)))
  "Returns md5sum for a message object of type 'FindVehicle-response"
  "b36034dc7d45586e0c9a9301ebcb2c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindVehicle-response>)))
  "Returns full string definition for message of type '<FindVehicle-response>"
  (cl:format cl:nil "bool success~%string message~%Vehicle vehicle~%~%================================================================================~%MSG: vehicle_manager/Vehicle~%uint32 id~%string licensePlate~%string make~%string model~%string year~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindVehicle-response)))
  "Returns full string definition for message of type 'FindVehicle-response"
  (cl:format cl:nil "bool success~%string message~%Vehicle vehicle~%~%================================================================================~%MSG: vehicle_manager/Vehicle~%uint32 id~%string licensePlate~%string make~%string model~%string year~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindVehicle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindVehicle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindVehicle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':vehicle (vehicle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindVehicle)))
  'FindVehicle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindVehicle)))
  'FindVehicle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindVehicle)))
  "Returns string type for a service object of type '<FindVehicle>"
  "vehicle_manager/FindVehicle")