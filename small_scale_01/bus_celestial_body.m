clear elems;

counter = 1;
elems(counter) = add_elem('mass', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('gravitational_parameter', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('surface_gravity', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('rotational_period', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('rotational_speed', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('rotation_angle', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('initial_rotation', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('equatorial_radius', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('sphere_of_influence', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('has_atmosphere', 'boolean', 1); counter = counter + 1;
elems(counter) = add_elem('atmosphere_depth', 'double', 1); counter = counter + 1;
elems(counter) = add_elem('has_atmospheric_oxygen', 'boolean', 1); counter = counter + 1;

CelestialBody = Simulink.Bus;
CelestialBody.Elements = elems;

function elems_i = add_elem(name, data_type, dims)
    elems_i = Simulink.BusElement;
    elems_i.Name = name;
    elems_i.Dimensions = dims;
    elems_i.DimensionsMode = 'Fixed';
    elems_i.DataType = data_type;
    elems_i.SampleTime = -1;
    elems_i.Complexity = 'real';
end