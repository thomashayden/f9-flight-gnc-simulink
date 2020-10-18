import krpc.client.Connection;
import krpc.client.RPCException;
import krpc.client.services.SpaceCenter;
%import krpc.client.services.SpaceCenter.Vessel;

connection = krpc.client.Connection.newInstance();
spaceCenter = krpc.client.services.SpaceCenter.newInstance(connection);
vessel = spaceCenter.getActiveVessel();
vessel_control = vessel.getControl();
vessel_surface_rf = vessel.getSurfaceReferenceFrame();
vessel_regular_rf = vessel.getReferenceFrame();
vessel_orbital_rf = vessel.getOrbitalReferenceFrame();
vessel_flight = vessel.flight(vessel_surface_rf);
vessel_flight_rf = vessel.flight(vessel_regular_rf);
vessel_orbit = vessel.getOrbit();
autoPilot = vessel.getAutoPilot();
%stream_rcs = connection.addStream(vessel_control, "getRCS");
%stream_sas = connection.addStream(vessel_control, "getSAS");


%% Test
AAtmp = vessel_flight.getRotation();
rotation = zeros(1,4);
rotation(1) = AAtmp.getValue(3);
rotation(2) = AAtmp.getValue(0);
rotation(3) = AAtmp.getValue(1);
rotation(4) = AAtmp.getValue(2);
%rotation_s = rotation;d
% child_inverse = quatinv(rotation_s);
% relative_rotation = quatmultiply(rotation, child_inverse);
% [z_rot, y_rot, x_rot] = quat2angle(rotation, 'XYZ');
% z_rot = rad2deg(z_rot);
% y_rot = rad2deg(y_rot);
% x_rot = rad2deg(x_rot);

% In XYZ mode
% rotation_surface_rf -> rotation from vessel -> surface (ZYX)
% quatinv(rotation_surface_rf) -> rotation from surface -> vessel (ZYX)??

% In ZYX mode
% rotation_surface_rf -> rotation from vessel -> surface (XYZ)??
% quatinv(rotation_surface_rf) -> rotation from surface -> vessel (XYZ)


%% Run the model
vessel_control.setInputMode(javaMethod('valueOf','krpc.client.services.SpaceCenter$ControlInputMode', 'OVERRIDE'))
sim('main', 45*60);