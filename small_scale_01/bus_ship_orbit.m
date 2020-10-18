clear elems;

counter = 1;
elems(counter) = add_elem('apoapsis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('periapsis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('apoapsis_altitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('periapsis_altitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('semimajor_axis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('semiminor_axis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('radius', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('period', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('time_to_apoapsis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('time_to_periapsis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('eccentricity', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('inclination', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('longitude_of_ascending_node', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('argument_of_periapsis', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('mean_anomaly_at_epoch', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('epoch', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('mean_anomaly', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('eccentric_anomaly', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('true_anomaly', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('orbital_speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('time_to_soi_change', 'double', 1); counter = counter + 1;

ShipOrbit = Simulink.Bus;
ShipOrbit.Elements = elems;

function elems_i = add_elem(name, data_type, disp)
    elems_i = Simulink.BusElement;
    elems_i.Name = name;
    elems_i.Dimensions = disp;
    elems_i.DimensionsMode = 'Fixed';
    elems_i.DataType = data_type;
    elems_i.SampleTime = -1;
    elems_i.Complexity = 'real';
end