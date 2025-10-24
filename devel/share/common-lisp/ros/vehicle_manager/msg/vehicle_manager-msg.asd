
(cl:in-package :asdf)

(defsystem "vehicle_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Vehicle" :depends-on ("_package_Vehicle"))
    (:file "_package_Vehicle" :depends-on ("_package"))
    (:file "VehicleArray" :depends-on ("_package_VehicleArray"))
    (:file "_package_VehicleArray" :depends-on ("_package"))
  ))