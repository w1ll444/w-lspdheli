Config = {}

Config.Label = "LSPD Vehicles"        -- Label for locations on map

Config.WalkUpRentalMenu = false     -- True == Walk up to display to open rental menu, False == Must manually press key at display to open rental menu

--[[
    For each Config.RentalLocations[x]:
    - label: Name of the location
        - Not currently in use, more so for knowing which location we're looking at in the
          config without having to go to the coordinates in game
    - rental_coords: The coordinates of the interactable Helicopter display
        - Change to vector4, add w coordinate, and uncomment the SetEntityHeading() calls in
          client/main.lua if you want to configure the direction vehicle displays are facing
    - spawn_coords: The coordinates a player spawns at on vehicle when they rent a vehicle
    - default_veh: The default vehicle model displayed to players
    - chosen_veh: The current vehicle model displayed to players
        - Dynamic, changes for everyone when the player changes the vehicle display
    - active: If the location is active
        - Set to false to disable rentals at this location (location and display will not appear on map or to players at all)
]]
Config.RentalLocations = {
    [1] = {
        label = "MRPD Roof",
        rental_coords = vector3(460.07, -990.66, 43.69), spawn_coords = vector4(449.51, -981.47, 43.68, 98),
        default_veh = 'POLMAV', chosen_veh = 'POLMAV',
        active = true
    },
}

--[[
    For each Config.Helis[x]:
    - model: The vehicle model
    - label: The name of the vehicle as is displayed to the player
    - rental_cost: The cost to rent this vehicle
    - available: If the vehicle is available for rent
        - Set to false to remove this vehicle from available rentals
]]
Config.Helis = {
    [1] = { model = "POLMAV", label = "PD Heli", rental_cost = 0, available = true },
}