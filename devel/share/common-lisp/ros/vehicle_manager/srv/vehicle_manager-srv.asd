
(cl:in-package :asdf)

(defsystem "vehicle_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :vehicle_manager-msg
)
  :components ((:file "_package")
    (:file "DisplayAllVehicle" :depends-on ("_package_DisplayAllVehicle"))
    (:file "_package_DisplayAllVehicle" :depends-on ("_package"))
    (:file "FindVehicle" :depends-on ("_package_FindVehicle"))
    (:file "_package_FindVehicle" :depends-on ("_package"))
    (:file "RegisterVehicle" :depends-on ("_package_RegisterVehicle"))
    (:file "_package_RegisterVehicle" :depends-on ("_package"))
  ))