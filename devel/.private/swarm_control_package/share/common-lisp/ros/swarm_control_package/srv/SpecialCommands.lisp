; Auto-generated. Do not edit!


(cl:in-package swarm_control_package-srv)


;//! \htmlinclude SpecialCommands-request.msg.html

(cl:defclass <SpecialCommands-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass SpecialCommands-request (<SpecialCommands-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpecialCommands-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpecialCommands-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_control_package-srv:<SpecialCommands-request> is deprecated: use swarm_control_package-srv:SpecialCommands-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SpecialCommands-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_control_package-srv:command-val is deprecated.  Use swarm_control_package-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpecialCommands-request>) ostream)
  "Serializes a message object of type '<SpecialCommands-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpecialCommands-request>) istream)
  "Deserializes a message object of type '<SpecialCommands-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpecialCommands-request>)))
  "Returns string type for a service object of type '<SpecialCommands-request>"
  "swarm_control_package/SpecialCommandsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpecialCommands-request)))
  "Returns string type for a service object of type 'SpecialCommands-request"
  "swarm_control_package/SpecialCommandsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpecialCommands-request>)))
  "Returns md5sum for a message object of type '<SpecialCommands-request>"
  "a1be574ae7cc4fce751bea7c600387df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpecialCommands-request)))
  "Returns md5sum for a message object of type 'SpecialCommands-request"
  "a1be574ae7cc4fce751bea7c600387df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpecialCommands-request>)))
  "Returns full string definition for message of type '<SpecialCommands-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpecialCommands-request)))
  "Returns full string definition for message of type 'SpecialCommands-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpecialCommands-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpecialCommands-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpecialCommands-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SpecialCommands-response.msg.html

(cl:defclass <SpecialCommands-response> (roslisp-msg-protocol:ros-message)
  ((Response
    :reader Response
    :initarg :Response
    :type cl:string
    :initform ""))
)

(cl:defclass SpecialCommands-response (<SpecialCommands-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpecialCommands-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpecialCommands-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_control_package-srv:<SpecialCommands-response> is deprecated: use swarm_control_package-srv:SpecialCommands-response instead.")))

(cl:ensure-generic-function 'Response-val :lambda-list '(m))
(cl:defmethod Response-val ((m <SpecialCommands-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_control_package-srv:Response-val is deprecated.  Use swarm_control_package-srv:Response instead.")
  (Response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpecialCommands-response>) ostream)
  "Serializes a message object of type '<SpecialCommands-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpecialCommands-response>) istream)
  "Deserializes a message object of type '<SpecialCommands-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpecialCommands-response>)))
  "Returns string type for a service object of type '<SpecialCommands-response>"
  "swarm_control_package/SpecialCommandsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpecialCommands-response)))
  "Returns string type for a service object of type 'SpecialCommands-response"
  "swarm_control_package/SpecialCommandsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpecialCommands-response>)))
  "Returns md5sum for a message object of type '<SpecialCommands-response>"
  "a1be574ae7cc4fce751bea7c600387df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpecialCommands-response)))
  "Returns md5sum for a message object of type 'SpecialCommands-response"
  "a1be574ae7cc4fce751bea7c600387df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpecialCommands-response>)))
  "Returns full string definition for message of type '<SpecialCommands-response>"
  (cl:format cl:nil "string Response~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpecialCommands-response)))
  "Returns full string definition for message of type 'SpecialCommands-response"
  (cl:format cl:nil "string Response~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpecialCommands-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpecialCommands-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpecialCommands-response
    (cl:cons ':Response (Response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpecialCommands)))
  'SpecialCommands-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpecialCommands)))
  'SpecialCommands-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpecialCommands)))
  "Returns string type for a service object of type '<SpecialCommands>"
  "swarm_control_package/SpecialCommands")