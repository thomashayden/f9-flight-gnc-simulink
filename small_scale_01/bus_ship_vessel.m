clear elems;

counter = 1;
elems(counter) = add_elem('recoverable', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('met', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('crew_capacity', 'uint8', 1); counter = counter + 1;
elems(counter) = add_elem('crew_count', 'uint8', 1); counter = counter + 1;
elems(counter) = add_elem('mass', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('dry_mass', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('thrust', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('available_thrust', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('max_thrust', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('max_vacuum_thrust', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('specific_impulse', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('vacuum_specific_impulse', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('kerbin_sea_level_specific_impulse', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('moment_of_inertia', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('available_torque', 'double', [2,3]); counter = counter + 1;
elems(counter) = add_elem('position_reg', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('velocity_reg', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('rotation_reg', 'double', [1,4]); counter = counter + 1;
elems(counter) = add_elem('direction_reg', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('angular_velocity_reg', 'double', 3); counter = counter + 1;
elems(counter) = add_elem('position_surface', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('velocity_surface', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('rotation_surface', 'double', [1,4]); counter = counter + 1;
elems(counter) = add_elem('direction_surface', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('angular_velocity_surface', 'double', 3); counter = counter + 1;
elems(counter) = add_elem('position_orbital', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('velocity_orbital', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('rotation_orbital', 'double', [1,4]); counter = counter + 1;
elems(counter) = add_elem('direction_orbital', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('angular_velocity_orbital', 'double', 3); counter = counter + 1;

ShipVessel = Simulink.Bus;
ShipVessel.Elements = elems;

function elems_i = add_elem(name, data_type, dims)
    elems_i = Simulink.BusElement;
    elems_i.Name = name;
    elems_i.Dimensions = dims;
    elems_i.DimensionsMode = 'Fixed';
    elems_i.DataType = data_type;
    elems_i.SampleTime = -1;
    elems_i.Complexity = 'real';
end