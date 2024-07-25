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
    ((:id __id) "")
    ((:drone_name __drone_name) "")
    )
   (send-super :init)
   (setq _id (string __id))
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
    ;; string _id
    4 (length _id)
    ;; string _drone_name
    4 (length _drone_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _drone_name
       (write-long (length _drone_name) s) (princ _drone_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _drone_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _drone_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass swarm_control_package::NewTargetResponse
  :super ros::object
  :slots (_output_string ))

(defmethod swarm_control_package::NewTargetResponse
  (:init
   (&key
    ((:output_string __output_string) "")
    )
   (send-super :init)
   (setq _output_string (string __output_string))
   self)
  (:output_string
   (&optional __output_string)
   (if __output_string (setq _output_string __output_string)) _output_string)
  (:serialization-length
   ()
   (+
    ;; string _output_string
    4 (length _output_string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output_string
       (write-long (length _output_string) s) (princ _output_string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass swarm_control_package::NewTarget
  :super ros::object
  :slots ())

(setf (get swarm_control_package::NewTarget :md5sum-) "c474dafb5d56d13eb189af9f6d052132")
(setf (get swarm_control_package::NewTarget :datatype-) "swarm_control_package/NewTarget")
(setf (get swarm_control_package::NewTarget :request) swarm_control_package::NewTargetRequest)
(setf (get swarm_control_package::NewTarget :response) swarm_control_package::NewTargetResponse)

(defmethod swarm_control_package::NewTargetRequest
  (:response () (instance swarm_control_package::NewTargetResponse :init)))

(setf (get swarm_control_package::NewTargetRequest :md5sum-) "c474dafb5d56d13eb189af9f6d052132")
(setf (get swarm_control_package::NewTargetRequest :datatype-) "swarm_control_package/NewTargetRequest")
(setf (get swarm_control_package::NewTargetRequest :definition-)
      "string id
string drone_name
---
string output_string
")

(setf (get swarm_control_package::NewTargetResponse :md5sum-) "c474dafb5d56d13eb189af9f6d052132")
(setf (get swarm_control_package::NewTargetResponse :datatype-) "swarm_control_package/NewTargetResponse")
(setf (get swarm_control_package::NewTargetResponse :definition-)
      "string id
string drone_name
---
string output_string
")



(provide :swarm_control_package/NewTarget "c474dafb5d56d13eb189af9f6d052132")


