#pragma once 
#include <ros/ros.h>
#include "vehicle_manager/Vehicle.h"
#include "vehicle_manager/RegisterVehicle.h"
#include "vehicle_manager/FindVehicle.h"
#include "vehicle_manager/DisplayAllVehicle.h"
#include <iostream>


class VehicleManagerClient {

  ros::NodeHandle nh;

  ros::ServiceClient register_vehicle_client;
  ros::ServiceClient find_vehicle;
  ros::ServiceClient display_all_vehicles;

  void show_menu();

  std::vector<vehicle_manager::Vehicle> get_all_vehicles();
  
  void add_vehicle_menu();
  void find_vehicle_menu();
  void display_vehicles_menu();

public:
  VehicleManagerClient();

  void start();

};