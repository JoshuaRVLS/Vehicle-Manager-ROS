# Vehicle Manager

Simple ROS vehicle management system.

## Features

- **Add Vehicle** - Register new vehicles
- **Remove Vehicle** - Delete vehicles by ID  
- **Display All Vehicles** - View all registered vehicles
- **Specific Vehicle View** - See details of individual vehicles
- **Edit Vehicle** - Update vehicle information

## Quick Start

```bash
# Terminal 1 - Server
rosrun vehicle_manager vehicle_manager_server

# Terminal 2 - Client  
rosrun vehicle_manager vehicle_manager_client
```

## Usage

**Main Menu:**
- `[1]` Add Vehicle
- `[2]` Find Vehicle  
- `[3]` Display All Vehicles
- `[q]` Quit

**In Vehicle List:**
- `Enter` - Back to menu
- `/` - View specific vehicle

Edit or delete vehicles from the detailed view.
