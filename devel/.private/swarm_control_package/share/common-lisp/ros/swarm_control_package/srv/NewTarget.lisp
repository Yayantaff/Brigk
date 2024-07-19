; Auto-generated. Do not edit!


(cl:in-package swarm_control_package-srv)


;//! \htmlinclude NewTarget-request.msg.html

(cl:defclass <NewTarget-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (drone_name
    :reader drone_name
    :initarg :drone_name
    :type cl:string
    :initform ""))
)

(cl:defclass NewTarget-request (<NewTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_control_package-srv:<NewTarget-request> is deprecated: use swarm_control_package-srv:NewTarget-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <NewTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_control_package-srv:id-val is deprecated.  Use swarm_control_package-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'drone_name-val :lambda-list '(m))
(cl:defmethod drone_name-val ((m <NewTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_control_package-srv:drone_name-val is deprecated.  Use swarm_control_package-srv:drone_name instead.")
  (drone_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewTarget-request>) ostream)
  "Serializes a message object of type '<NewTarget-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'drone_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'drone_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewTarget-request>) istream)
  "Deserializes a message object of type '<NewTarget-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'drone_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewTarget-request>)))
  "Returns string type for a service object of type '<NewTarget-request>"
  "swarm_control_package/NewTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewTarget-request)))
  "Returns string type for a service object of type 'NewTarget-request"
  "swarm_control_package/NewTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewTarget-request>)))
  "Returns md5sum for a message object of type '<NewTarget-request>"
  "02e92aea6f3587911e71e635adcba734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewTarget-request)))
  "Returns md5sum for a message object of type 'NewTarget-request"
  "02e92aea6f3587911e71e635adcba734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewTarget-request>)))
  "Returns full string definition for message of type '<NewTarget-request>"
  (cl:format cl:nil "int32 id~%#geometry_msgs/Point position~%string drone_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewTarget-request)))
  "Returns full string definition for message of type 'NewTarget-request"
  (cl:format cl:nil "int32 id~%#geometry_msgs/Point position~%string drone_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewTarget-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'drone_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NewTarget-request
    (cl:cons ':id (id msg))
    (cl:cons ':drone_name (drone_name msg))
))
;//! \htmlinclude NewTarget-response.msg.html

(cl:defclass <NewTarget-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass NewTarget-response (<NewTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_control_package-srv:<NewTarget-response> is deprecated: use swarm_control_package-srv:NewTarget-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <NewTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_control_package-srv:response-val is deprecated.  Use swarm_control_package-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewTarget-response>) ostream)
  "Serializes a message object of type '<NewTarget-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewTarget-response>) istream)
  "Deserializes a message object of type '<NewTarget-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewTarget-response>)))
  "Returns string type for a service object of type '<NewTarget-response>"
  "swarm_control_package/NewTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewTarget-response)))
  "Returns string type for a service object of type 'NewTarget-response"
  "swarm_control_package/NewTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewTarget-response>)))
  "Returns md5sum for a message object of type '<NewTarget-response>"
  "02e92aea6f3587911e71e635adcba734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewTarget-response)))
  "Returns md5sum for a message object of type 'NewTarget-response"
  "02e92aea6f3587911e71e635adcba734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewTarget-response>)))
  "Returns full string definition for message of type '<NewTarget-response>"
  (cl:format cl:nil "string response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewTarget-response)))
  "Returns full string definition for message of type 'NewTarget-response"
  (cl:format cl:nil "string response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewTarget-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NewTarget-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NewTarget)))
  'NewTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NewTarget)))
  'NewTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewTarget)))
  "Returns string type for a service object of type '<NewTarget>"
  "swarm_control_package/NewTarget")