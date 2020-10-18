clear elems;

counter = 1;
elems(counter) = add_elem('sas', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('rcs', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('reaction_wheels', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('gear', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('legs', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('wheels', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('lights', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('brakes', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('antennas', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('cargo_bays', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('intakes', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('parachutes', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('radiators', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('resource_harvesters', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('resource_harvesters_active', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('solar_panels', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('abort', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('throttle', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('pitch', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('yaw', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('roll', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('forward', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('up', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('right', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('wheel_throttle', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('wheel_steering', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('current_stage', 'uint8', 1); counter = counter + 1;

ShipControl = Simulink.Bus;
ShipControl.Elements = elems;

function elems_i = add_elem(name, data_type, dims)
    elems_i = Simulink.BusElement;
    elems_i.Name = name;
    elems_i.Dimensions = dims;
    elems_i.DimensionsMode = 'Fixed';
    elems_i.DataType = data_type;
    elems_i.SampleTime = -1;
    elems_i.Complexity = 'real';
end