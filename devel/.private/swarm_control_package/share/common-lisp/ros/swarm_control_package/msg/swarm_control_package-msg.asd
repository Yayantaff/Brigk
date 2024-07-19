
(cl:in-package :asdf)

(defsystem "swarm_control_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :fiducial_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Fiducial" :depends-on ("_package_Fiducial"))
    (:file "_package_Fiducial" :depends-on ("_package"))
    (:file "FiducialArray" :depends-on ("_package_FiducialArray"))
    (:file "_package_FiducialArray" :depends-on ("_package"))
    (:file "FiducialTransform" :depends-on ("_package_FiducialTransform"))
    (:file "_package_FiducialTransform" :depends-on ("_package"))
    (:file "FiducialTransformArray" :depends-on ("_package_FiducialTransformArray"))
    (:file "_package_FiducialTransformArray" :depends-on ("_package"))
  ))