; Auto-generated. Do not edit!


(cl:in-package vehicle_manager-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((licensePlate
    :reader licensePlate
    :initarg :licensePlate
    :type cl:string
    :initform "")
   (make
    :reader make
    :initarg :make
    :type cl:string
    :initform "")
   (model
    :reader model
    :initarg :model
    :type cl:string
    :initform "")
   (year
    :reader year
    :initarg :year
    :type cl:integer
    :initform 0))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_manager-msg:<Vehicle> is deprecated: use vehicle_manager-msg:Vehicle instead.")))

(cl:ensure-generic-function 'licensePlate-val :lambda-list '(m))
(cl:defmethod licensePlate-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-msg:licensePlate-val is deprecated.  Use vehicle_manager-msg:licensePlate instead.")
  (licensePlate m))

(cl:ensure-generic-function 'make-val :lambda-list '(m))
(cl:defmethod make-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-msg:make-val is deprecated.  Use vehicle_manager-msg:make instead.")
  (make m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-msg:model-val is deprecated.  Use vehicle_manager-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_manager-msg:year-val is deprecated.  Use vehicle_manager-msg:year instead.")
  (year m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'licensePlate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'licensePlate))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'make))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'make))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'year)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'licensePlate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'licensePlate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'make) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'make) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'year)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "vehicle_manager/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "vehicle_manager/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "479b39ca288c27764f2c6215160e4663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "479b39ca288c27764f2c6215160e4663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "string licensePlate~%string make~%string model~%uint32 year~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "string licensePlate~%string make~%string model~%uint32 year~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'licensePlate))
     4 (cl:length (cl:slot-value msg 'make))
     4 (cl:length (cl:slot-value msg 'model))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':licensePlate (licensePlate msg))
    (cl:cons ':make (make msg))
    (cl:cons ':model (model msg))
    (cl:cons ':year (year msg))
))
