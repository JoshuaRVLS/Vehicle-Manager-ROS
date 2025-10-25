; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-srv)


;//! \htmlinclude EditVehicle-request.msg.html

(cl:defclass <EditVehicle-request> (roslisp-msg-protocol:ros-message)
  ((property
    :reader property
    :initarg :property
    :type cl:string
    :initform "")
   (vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type cl:integer
    :initform 0)
   (new_value
    :reader new_value
    :initarg :new_value
    :type cl:string
    :initform ""))
)

(cl:defclass EditVehicle-request (<EditVehicle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditVehicle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditVehicle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<EditVehicle-request> is deprecated: use vehicle_manager-srv:EditVehicle-request instead.")))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <EditVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:property-val is deprecated.  Use vehicle_manager-srv:property instead.")
  (property m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <EditVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:vehicle_id-val is deprecated.  Use vehicle_manager-srv:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'new_value-val :lambda-list '(m))
(cl:defmethod new_value-val ((m <EditVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:new_value-val is deprecated.  Use vehicle_manager-srv:new_value instead.")
  (new_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditVehicle-request>) ostream)
  "Serializes a message object of type '<EditVehicle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'property))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditVehicle-request>) istream)
  "Deserializes a message object of type '<EditVehicle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'property) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'property) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditVehicle-request>)))
  "Returns string type for a service object of type '<EditVehicle-request>"
  "vehicle_manager/EditVehicleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditVehicle-request)))
  "Returns string type for a service object of type 'EditVehicle-request"
  "vehicle_manager/EditVehicleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditVehicle-request>)))
  "Returns md5sum for a message object of type '<EditVehicle-request>"
  "c1e037ffea88992a21a708541cb21c87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditVehicle-request)))
  "Returns md5sum for a message object of type 'EditVehicle-request"
  "c1e037ffea88992a21a708541cb21c87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditVehicle-request>)))
  "Returns full string definition for message of type '<EditVehicle-request>"
  (cl:format cl:nil "string property~%uint32 vehicle_id ~%string new_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditVehicle-request)))
  "Returns full string definition for message of type 'EditVehicle-request"
  (cl:format cl:nil "string property~%uint32 vehicle_id ~%string new_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditVehicle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'property))
     4
     4 (cl:length (cl:slot-value msg 'new_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditVehicle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EditVehicle-request
    (cl:cons ':property (property msg))
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':new_value (new_value msg))
))
;//! \htmlinclude EditVehicle-response.msg.html

(cl:defclass <EditVehicle-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EditVehicle-response (<EditVehicle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditVehicle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditVehicle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-srv:<EditVehicle-response> is deprecated: use vehicle_manager-srv:EditVehicle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EditVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:success-val is deprecated.  Use vehicle_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EditVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-srv:message-val is deprecated.  Use vehicle_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditVehicle-response>) ostream)
  "Serializes a message object of type '<EditVehicle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditVehicle-response>) istream)
  "Deserializes a message object of type '<EditVehicle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditVehicle-response>)))
  "Returns string type for a service object of type '<EditVehicle-response>"
  "vehicle_manager/EditVehicleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditVehicle-response)))
  "Returns string type for a service object of type 'EditVehicle-response"
  "vehicle_manager/EditVehicleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditVehicle-response>)))
  "Returns md5sum for a message object of type '<EditVehicle-response>"
  "c1e037ffea88992a21a708541cb21c87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditVehicle-response)))
  "Returns md5sum for a message object of type 'EditVehicle-response"
  "c1e037ffea88992a21a708541cb21c87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditVehicle-response>)))
  "Returns full string definition for message of type '<EditVehicle-response>"
  (cl:format cl:nil "bool success ~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditVehicle-response)))
  "Returns full string definition for message of type 'EditVehicle-response"
  (cl:format cl:nil "bool success ~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditVehicle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditVehicle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EditVehicle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EditVehicle)))
  'EditVehicle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EditVehicle)))
  'EditVehicle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditVehicle)))
  "Returns string type for a service object of type '<EditVehicle>"
  "vehicle_manager/EditVehicle")