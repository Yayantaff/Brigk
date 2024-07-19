
(cl:in-package :asdf)

(defsystem "swarm_control_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NewTarget" :depends-on ("_package_NewTarget"))
    (:file "_package_NewTarget" :depends-on ("_package"))
  ))