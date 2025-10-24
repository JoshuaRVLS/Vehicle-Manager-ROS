#pragma once
#include "ros/ros.h"
#include "vehicle_manager/RegisterVehicle.h"
#include "vehicle_manager/DisplayAllVehicle.h"
#include "vehicle_manager/FindVehicle.h"
#include <vector>
#include <iostream>

class VehicleManagerServer {

  ros::NodeHandle nh;

  std::vector<vehicle_manager::Vehicle> vehicles;

  bool register_vehicle(vehicle_manager::RegisterVehicle::Request& req, vehicle_manager::RegisterVehicle::Response& res);
  bool display_all_vehicles(vehicle_manager::DisplayAllVehicle::Request& req, vehicle_manager::DisplayAllVehicle::Response& res);
  bool find_vehicle(vehicle_manager::FindVehicle::Request& req, vehicle_manager::FindVehicle::Response& res);

public:
  VehicleManagerServer();

  void start();

};