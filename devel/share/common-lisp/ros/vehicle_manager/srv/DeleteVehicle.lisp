; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-srv)


;//! \htmlinclude DeleteVehicle-request.msg.html

(cl:defclass <DeleteVehicle-request> (roslisp-msg-protocol:ros-message)
  ((vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type cl:integer
    :initform 0))
)

(cl:defclass DeleteVehicle-request (<DeleteVehicle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteVehicle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteVehicle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<DeleteVehicle-request> is deprecated: use vehicle_manager-srv:DeleteVehicle-request instead.")))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <DeleteVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:vehicle_id-val is deprecated.  Use vehicle_manager-srv:vehicle_id instead.")
  (vehicle_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteVehicle-request>) ostream)
  "Serializes a message object of type '<DeleteVehicle-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteVehicle-request>) istream)
  "Deserializes a message object of type '<DeleteVehicle-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteVehicle-request>)))
  "Returns string type for a service object of type '<DeleteVehicle-request>"
  "vehicle_manager/DeleteVehicleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVehicle-request)))
  "Returns string type for a service object of type 'DeleteVehicle-request"
  "vehicle_manager/DeleteVehicleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteVehicle-request>)))
  "Returns md5sum for a message object of type '<DeleteVehicle-request>"
  "26021b5c78adc94a5ca3e835030134b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteVehicle-request)))
  "Returns md5sum for a message object of type 'DeleteVehicle-request"
  "26021b5c78adc94a5ca3e835030134b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteVehicle-request>)))
  "Returns full string definition for message of type '<DeleteVehicle-request>"
  (cl:format cl:nil "uint32 vehicle_id ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteVehicle-request)))
  "Returns full string definition for message of type 'DeleteVehicle-request"
  (cl:format cl:nil "uint32 vehicle_id ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteVehicle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteVehicle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteVehicle-request
    (cl:cons ':vehicle_id (vehicle_id msg))
))
;//! \htmlinclude DeleteVehicle-response.msg.html

(cl:defclass <DeleteVehicle-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteVehicle-response (<DeleteVehicle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteVehicle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteVehicle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<DeleteVehicle-response> is deprecated: use vehicle_manager-srv:DeleteVehicle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:success-val is deprecated.  Use vehicle_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:message-val is deprecated.  Use vehicle_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteVehicle-response>) ostream)
  "Serializes a message object of type '<DeleteVehicle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteVehicle-response>) istream)
  "Deserializes a message object of type '<DeleteVehicle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteVehicle-response>)))
  "Returns string type for a service object of type '<DeleteVehicle-response>"
  "vehicle_manager/DeleteVehicleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVehicle-response)))
  "Returns string type for a service object of type 'DeleteVehicle-response"
  "vehicle_manager/DeleteVehicleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteVehicle-response>)))
  "Returns md5sum for a message object of type '<DeleteVehicle-response>"
  "26021b5c78adc94a5ca3e835030134b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteVehicle-response)))
  "Returns md5sum for a message object of type 'DeleteVehicle-response"
  "26021b5c78adc94a5ca3e835030134b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteVehicle-response>)))
  "Returns full string definition for message of type '<DeleteVehicle-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteVehicle-response)))
  "Returns full string definition for message of type 'DeleteVehicle-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteVehicle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteVehicle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteVehicle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteVehicle)))
  'DeleteVehicle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteVehicle)))
  'DeleteVehicle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVehicle)))
  "Returns string type for a service object of type '<DeleteVehicle>"
  "vehicle_manager/DeleteVehicle")