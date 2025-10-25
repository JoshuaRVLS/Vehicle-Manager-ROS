#pragma once 
#include <ros/ros.h>
#include "vehicle_manager/Vehicle.h"
#include "vehicle_manager/RegisterVehicle.h"
#include "vehicle_manager/FindVehicle.h"
#include "vehicle_manager/DisplayAllVehicle.h"
#include "vehicle_manager/EditVehicle.h"
#include "vehicle_manager/DeleteVehicle.h"
#include <iostream>


class VehicleManagerClient {

  ros::NodeHandle nh;

  ros::ServiceClient register_vehicle_client;
  ros::ServiceClient find_vehicle;
  ros::ServiceClient display_all_vehicles;
  ros::ServiceClient delete_vehicle_client;
  ros::ServiceClient edit_vehicle_client;

  void show_menu();

  std::vector<vehicle_manager::Vehicle> get_all_vehicles();
  
  void add_vehicle_menu();
  void find_vehicle_menu();
  void display_vehicles_menu();
  void print_info(vehicle_manager::Vehicle& vehicle);
  void delete_vehicle(const int& vehicle_id);
  void update_vehicle(const std::string& property_name, const int& vehicle_id, const std::string& new_value);

public:
  VehicleManagerClient();

  void start();

};