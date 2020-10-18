clear elems;

counter = 1;
elems(counter) = add_elem('gforce', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('mean_altitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('surface_altitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('bedrock_altitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('elevation', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('latitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('longitude', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('velocity', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('horizontal_speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('vertical_speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('center_of_mass', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('rotation', 'double', [1,4]); counter = counter + 1;
elems(counter) = add_elem('direction', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('pitch', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('heading', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('roll', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('prograde', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('retrograde', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('normal', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('antinormal', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('radial', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('antiradial', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('atmosphere_density', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('dynamic_pressure', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('static_pressure', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('static_pressure_at_msl', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('aerodynamic_force', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('lift', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('drag', 'double', [1,3]); counter = counter + 1;
elems(counter) = add_elem('speed_of_sound', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('mach', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('true_air_speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('equivalent_air_speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('terminal_velocity', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('angle_of_attack', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('sideslip_angle', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('total_air_temperature', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('static_air_temperature', 'double', 1); counter = counter + 1;

ShipFlight = Simulink.Bus;
ShipFlight.Elements = elems;

function elems_i = add_elem(name, data_type, disp)
    elems_i = Simulink.BusElement;
    elems_i.Name = name;
    elems_i.Dimensions = disp;
    elems_i.DimensionsMode = 'Fixed';
    elems_i.DataType = data_type;
    elems_i.SampleTime = -1;
    elems_i.Complexity = 'real';
end