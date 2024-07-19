;; Auto-generated. Do not edit!


(when (boundp 'swarm_control_package::NewTarget)
  (if (not (find-package "SWARM_CONTROL_PACKAGE"))
    (make-package "SWARM_CONTROL_PACKAGE"))
  (shadow 'NewTarget (find-package "SWARM_CONTROL_PACKAGE")))
(unless (find-package "SWARM_CONTROL_PACKAGE::NEWTARGET")
  (make-package "SWARM_CONTROL_PACKAGE::NEWTARGET"))
(unless (find-package "SWARM_CONTROL_PACKAGE::NEWTARGETREQUEST")
  (make-package "SWARM_CONTROL_PACKAGE::NEWTARGETREQUEST"))
(unless (find-package "SWARM_CONTROL_PACKAGE::NEWTARGETRESPONSE")
  (make-package "SWARM_CONTROL_PACKAGE::NEWTARGETRESPONSE"))

(in-package "ROS")





(defclass swarm_control_package::NewTargetRequest
  :super ros::object
  :slots (_id _drone_name ))

(defmethod swarm_control_package::NewTargetRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:drone_name __drone_name) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _drone_name (string __drone_name))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:drone_name
   (&optional __drone_name)
   (if __drone_name (setq _drone_name __drone_name)) _drone_name)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _drone_name
    4 (length _drone_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _drone_name
       (write-long (length _drone_name) s) (princ _drone_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _drone_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _drone_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass swarm_control_package::NewTargetResponse
  :super ros::object
  :slots (_response ))

(defmethod swarm_control_package::NewTargetResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass swarm_control_package::NewTarget
  :super ros::object
  :slots ())

(setf (get swarm_control_package::NewTarget :md5sum-) "02e92aea6f3587911e71e635adcba734")
(setf (get swarm_control_package::NewTarget :datatype-) "swarm_control_package/NewTarget")
(setf (get swarm_control_package::NewTarget :request) swarm_control_package::NewTargetRequest)
(setf (get swarm_control_package::NewTarget :response) swarm_control_package::NewTargetResponse)

(defmethod swarm_control_package::NewTargetRequest
  (:response () (instance swarm_control_package::NewTargetResponse :init)))

(setf (get swarm_control_package::NewTargetRequest :md5sum-) "02e92aea6f3587911e71e635adcba734")
(setf (get swarm_control_package::NewTargetRequest :datatype-) "swarm_control_package/NewTargetRequest")
(setf (get swarm_control_package::NewTargetRequest :definition-)
      "int32 id
#geometry_msgs/Point position
string drone_name
---
string response
")

(setf (get swarm_control_package::NewTargetResponse :md5sum-) "02e92aea6f3587911e71e635adcba734")
(setf (get swarm_control_package::NewTargetResponse :datatype-) "swarm_control_package/NewTargetResponse")
(setf (get swarm_control_package::NewTargetResponse :definition-)
      "int32 id
#geometry_msgs/Point position
string drone_name
---
string response
")



(provide :swarm_control_package/NewTarget "02e92aea6f3587911e71e635adcba734")


