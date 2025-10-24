#include "vehicle_manager/vehicle_manager_server.h"


VehicleManagerServer::VehicleManagerServer() {};

bool VehicleManagerServer::register_vehicle(vehicle_manager::RegisterVehicle::Request & req, vehicle_manager::RegisterVehicle::Response & res)
{
  auto it = find_if(vehicles.begin(), vehicles.end(),
            [&req](const vehicle_manager::Vehicle& v) { return v.licensePlate == req.vehicle.licensePlate; });

  if (it != vehicles.end()) {
    res.success = false;
    res.message = "License plate sudah terdaftar!";
    ROS_ERROR("Cant add new vehicle! Vehicle exists!");
    return true;
  }
  vehicles.push_back(req.vehicle);
  res.message = "Mobil Baru dengan plat " + req.vehicle.licensePlate + " Berhasil ditambahkan";
  res.success = true;
  ROS_INFO("New vehicle added with license plate: %s", req.vehicle.licensePlate.c_str());
  return true;
}


bool VehicleManagerServer::display_all_vehicles(vehicle_manager::DisplayAllVehicle::Request & req, vehicle_manager::DisplayAllVehicle::Response & res)
{
  ROS_INFO("Gell all vehicles request!");
  if (vehicles.empty()) {
    res.success = false;
    res.message = "No vehicles registered.\n";
    res.vehicles = {};
    return true;
  }

  res.vehicles = vehicles;

  return true;
}


bool VehicleManagerServer::find_vehicle(vehicle_manager::FindVehicle::Request & req, vehicle_manager::FindVehicle::Response & res)
{
  ROS_INFO("Searching Vehicle for license plate: %s", req.licensePlate.c_str());
  auto it = find_if(vehicles.begin(), vehicles.end(),
            [&req](const vehicle_manager::Vehicle& v) { return v.licensePlate == req.licensePlate; });

  if (it == vehicles.end()) {
    res.success = false;
    res.message = "License plate tidak ditemukan!";
    return true;
  }

  res.success = true;
  res.message = "Mobil dengan license plate " + req.licensePlate + " ada di dalam database!";
  res.vehicle = *it;
  return true;
}

void VehicleManagerServer::start() {

  ros::ServiceServer register_vehicle_service = nh.advertiseService("register_vehicle_service", &VehicleManagerServer::register_vehicle, this);
  ros::ServiceServer display_all_vehicles = nh.advertiseService("display_all_vehicles", &VehicleManagerServer::display_all_vehicles, this);
  ros::ServiceServer find_vehicle = nh.advertiseService("find_vehicle", &VehicleManagerServer::find_vehicle, this);
  ROS_INFO("Vehicle Server Started");

  ros::spin();
}