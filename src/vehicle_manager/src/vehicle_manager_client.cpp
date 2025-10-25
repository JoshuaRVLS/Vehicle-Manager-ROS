#include "vehicle_manager/vehicle_manager_client.h"
#include "vehicle_manager/utils.hpp"

VehicleManagerClient::VehicleManagerClient() {};

void VehicleManagerClient::show_menu() {
  utils::clear_screen();
  int vehicles_count = !get_all_vehicles().empty() ? get_all_vehicles().size() : 0;

  std::cout << "<===== Vehicle Manager =====>" << std::endl;
  std::cout << "[1] Add Vehicle" << std::endl;
  std::cout << "[2] Find Vehicle" << std::endl;
  std::cout << "[3] Display All Vehicles (" << vehicles_count << ")" << std::endl;
  std::cout << "Press any options [q=quit] " << std::endl;;
  char inp = utils::getch();

  utils::clear_screen();

  switch(inp) {
    case '1':
      add_vehicle_menu();
      break;
    case '2':
      find_vehicle_menu();
      break;
    case '3':
      display_vehicles_menu();
      break;
  }
}


std::vector<vehicle_manager::Vehicle> VehicleManagerClient::get_all_vehicles()
{
  // static std::vector<vehicle_manager::Vehicle> empty_vector;
  vehicle_manager::DisplayAllVehicle srv;
  if (display_all_vehicles.call(srv)) {
    return srv.response.vehicles;
  }
}


void VehicleManagerClient::add_vehicle_menu()
{
  vehicle_manager::RegisterVehicle srv;
  std::cout << "<===== Add new vehicle =====>" << std::endl;
  std::cout << "License Plate: ";
  getline(std::cin, srv.request.vehicle.licensePlate);
  std::cout << "Make: ";
  getline(std::cin, srv.request.vehicle.make);
  std::cout << "Model: ";
  getline(std::cin, srv.request.vehicle.model);
  std::cout << "Year: ";
  getline(std::cin, srv.request.vehicle.year);


  if (register_vehicle_client.call(srv)) {
    std::cout << srv.response.message << std::endl;
  }
}

void VehicleManagerClient::find_vehicle_menu()
{
  vehicle_manager::FindVehicle srv;
  std::cout << "<===== Find vehicle =====>" << std::endl;
  std::cout << "License Plate: ";
  getline(std::cin, srv.request.licensePlate);

  if (find_vehicle.call(srv)) {
    std::cout << srv.response.message << std::endl;
    if (srv.response.success) {
      std::cout << "-----" << std::endl;
      std::cout << "License Plate: " << srv.response.vehicle.licensePlate << std::endl;
      std::cout << "Make: " << srv.response.vehicle.make << std::endl;
      std::cout << "Model: " << srv.response.vehicle.model << std::endl;
      std::cout << "Year: " << srv.response.vehicle.year << std::endl;
      std::cout << "-----" << std::endl;
    }
  }

  std::cout << "Press enter to get back to menu" << std::endl;
  utils::getch();
}

void VehicleManagerClient::display_vehicles_menu()
{
  utils::clear_screen();
  auto vehicles = get_all_vehicles();
  int vehicles_count = !get_all_vehicles().empty() ? get_all_vehicles().size() : 0;

  std::cout << vehicles_count << " Vehicles stored in database!" << std::endl;

  for (auto& vehicle: vehicles) {
    print_info(vehicle);
  }

  while (true) {
    std::cout << "Press enter to get back to menu\nPress slash [/] to view " << std::endl;
    char inp = utils::getch();
    if (inp == '/') {
      int vehicle_id;
      std::cout << "Vehicle ID to view: ";
      std::cin >> vehicle_id;
      if (!(vehicle_id > vehicles.size())) {
        utils::clear_screen();
        auto vehicle = vehicles[vehicle_id];
        print_info(vehicle);
        std::cout << "[1] Delete" << std::endl;
        std::cout << "[2] Edit" << std::endl;

        char opt = utils::getch();

        if (opt == '1') {
          vehicle_manager::DeleteVehicle srv;
          delete_vehicle(vehicle_id);
        } else if (opt == '2') {
          std::cout << "Select property to replaced: " << std::endl;
          std::string property, old_value, new_value;
          std::cout << "[1] License Plate" << std::endl;
          std::cout << "[2] Make" << std::endl;
          std::cout << "[3] Model" << std::endl;
          std::cout << "[4] Year" << std::endl;
          char inp = utils::getch();

          if (inp == '1') {
            property = "licensePlate";
            old_value = vehicle.licensePlate;
          }
          if (inp == '2') {
            property = "make";
            old_value = vehicle.make;
          }
          if (inp == '3') {
            property = "model";
            old_value = vehicle.model;
          }
          if (inp == '4') {
            property = "year";
            old_value = vehicle.year;
          }

          std::cout << "Old value: " << old_value << std::endl;
          std::cout << "Replacement: ";
          getline(std::cin, new_value);

          update_vehicle(property, vehicle_id, new_value);
        }

      } else {
        std::cout << "Vehicle ID Out of range!" << std::endl;
      }
    } else {
      break;
    }
  }



}

void VehicleManagerClient::print_info(vehicle_manager::Vehicle &vehicle)
{
  std::cout << "-----" << std::endl;
  std::cout << "ID: " << vehicle.id << std::endl;
  std::cout << "License Plate: " << vehicle.licensePlate << std::endl;
  std::cout << "Make: " << vehicle.make << std::endl;
  std::cout << "Model: " << vehicle.model << std::endl;
  std::cout << "Year: " << vehicle.year << std::endl;
  std::cout << "-----" << std::endl;
}

void VehicleManagerClient::delete_vehicle(const int &vehicle_id)
{
  vehicle_manager::DeleteVehicle srv;
  srv.request.vehicle_id = vehicle_id;
  if (delete_vehicle_client.call(srv)) {
    std::cout << srv.response.message << std::endl;
  }
}
void VehicleManagerClient::update_vehicle(const std::string &property_name, const int &vehicle_id, const std::string &new_value)
{
  vehicle_manager::EditVehicle srv;
  srv.request.vehicle_id = vehicle_id;
  srv.request.property = property_name;
  srv.request.new_value = new_value;
  if (edit_vehicle_client.call(srv)) {
    std::cout << srv.response.message << std::endl;
  }
}

void VehicleManagerClient::start()
{
  ros::service::waitForService("register_vehicle_service");
  ROS_INFO("service /register_vehicle_service aktif");
  ros::service::waitForService("find_vehicle");
  ROS_INFO("service /find_vehicle aktif");
  ros::service::waitForService("display_all_vehicles");
  ROS_INFO("service /display_all_vehicles aktif");
  ros::service::waitForService("delete_vehicle");
  ROS_INFO("service /delete_vehicle aktif");
  ros::service::waitForService("edit_vehicle");
  ROS_INFO("service /edit_vehicle aktif");

  register_vehicle_client = nh.serviceClient<vehicle_manager::RegisterVehicle>("register_vehicle_service");
  find_vehicle = nh.serviceClient<vehicle_manager::FindVehicle>("find_vehicle");
  display_all_vehicles = nh.serviceClient<vehicle_manager::DisplayAllVehicle>("display_all_vehicles");
  edit_vehicle_client = nh.serviceClient<vehicle_manager::EditVehicle>("edit_vehicle");
  delete_vehicle_client = nh.serviceClient<vehicle_manager::DeleteVehicle>("delete_vehicle");

  while (ros::ok()) {
    show_menu();
  }
}