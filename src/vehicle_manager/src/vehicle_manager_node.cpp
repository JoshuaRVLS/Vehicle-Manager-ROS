#include "ros/ros.h"
#include "vehicle_manager/vehicle_manager_client.h"

int main(int argc, char **argv) {
  ros::init(argc, argv, "vehicle_manager_node");

  VehicleManagerClient vehicle_manager_client;
  vehicle_manager_client.start();


  return 0;
}