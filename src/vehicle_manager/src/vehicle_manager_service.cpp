#include "ros/ros.h"
#include "vehicle_manager/vehicle_manager_server.h"
#include <iostream>

int main(int argc, char **argv) {
  ros::init(argc, argv, "vehicle_manager_service");

  VehicleManagerServer vehicle_manager_server;
  vehicle_manager_server.start();

  return 0;
}