cmake_minimum_required(VERSION 3.0.2)
project(vehicle_manager)

# //add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

add_message_files(
  FILES 
  Vehicle.msg
)

add_service_files(
  FILES 
  RegisterVehicle.srv
  DisplayAllVehicle.srv
  FindVehicle.srv
  EditVehicle.srv
  DeleteVehicle.srv
)

generate_messages(
  DEPENDENCIES 
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime roscpp std_msgs 
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  include
)

add_executable(vehicle_manager_node src/vehicle_manager_node.cpp src/vehicle_manager_client.cpp src/utils.cpp)
add_executable(vehicle_manager_service src/vehicle_manager_service.cpp src/vehicle_manager_server.cpp)

add_dependencies(vehicle_manager_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(vehicle_manager_service ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(vehicle_manager_node ${catkin_LIBRARIES})
target_link_libraries(vehicle_manager_service ${catkin_LIBRARIES})
