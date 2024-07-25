;; Auto-generated. Do not edit!


(when (boundp 'swarm_control_package::SpecialCommands)
  (if (not (find-package "SWARM_CONTROL_PACKAGE"))
    (make-package "SWARM_CONTROL_PACKAGE"))
  (shadow 'SpecialCommands (find-package "SWARM_CONTROL_PACKAGE")))
(unless (find-package "SWARM_CONTROL_PACKAGE::SPECIALCOMMANDS")
  (make-package "SWARM_CONTROL_PACKAGE::SPECIALCOMMANDS"))
(unless (find-package "SWARM_CONTROL_PACKAGE::SPECIALCOMMANDSREQUEST")
  (make-package "SWARM_CONTROL_PACKAGE::SPECIALCOMMANDSREQUEST"))
(unless (find-package "SWARM_CONTROL_PACKAGE::SPECIALCOMMANDSRESPONSE")
  (make-package "SWARM_CONTROL_PACKAGE::SPECIALCOMMANDSRESPONSE"))

(in-package "ROS")





(defclass swarm_control_package::SpecialCommandsRequest
  :super ros::object
  :slots (_command ))

(defmethod swarm_control_package::SpecialCommandsRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass swarm_control_package::SpecialCommandsResponse
  :super ros::object
  :slots (_Response ))

(defmethod swarm_control_package::SpecialCommandsResponse
  (:init
   (&key
    ((:Response __Response) "")
    )
   (send-super :init)
   (setq _Response (string __Response))
   self)
  (:Response
   (&optional __Response)
   (if __Response (setq _Response __Response)) _Response)
  (:serialization-length
   ()
   (+
    ;; string _Response
    4 (length _Response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Response
       (write-long (length _Response) s) (princ _Response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass swarm_control_package::SpecialCommands
  :super ros::object
  :slots ())

(setf (get swarm_control_package::SpecialCommands :md5sum-) "a1be574ae7cc4fce751bea7c600387df")
(setf (get swarm_control_package::SpecialCommands :datatype-) "swarm_control_package/SpecialCommands")
(setf (get swarm_control_package::SpecialCommands :request) swarm_control_package::SpecialCommandsRequest)
(setf (get swarm_control_package::SpecialCommands :response) swarm_control_package::SpecialCommandsResponse)

(defmethod swarm_control_package::SpecialCommandsRequest
  (:response () (instance swarm_control_package::SpecialCommandsResponse :init)))

(setf (get swarm_control_package::SpecialCommandsRequest :md5sum-) "a1be574ae7cc4fce751bea7c600387df")
(setf (get swarm_control_package::SpecialCommandsRequest :datatype-) "swarm_control_package/SpecialCommandsRequest")
(setf (get swarm_control_package::SpecialCommandsRequest :definition-)
      "string command
---
string Response


")

(setf (get swarm_control_package::SpecialCommandsResponse :md5sum-) "a1be574ae7cc4fce751bea7c600387df")
(setf (get swarm_control_package::SpecialCommandsResponse :datatype-) "swarm_control_package/SpecialCommandsResponse")
(setf (get swarm_control_package::SpecialCommandsResponse :definition-)
      "string command
---
string Response


")



(provide :swarm_control_package/SpecialCommands "a1be574ae7cc4fce751bea7c600387df")


