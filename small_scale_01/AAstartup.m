TPS = 100;

addpath('kOS_telnet_comms');
addpath('control');
addpath('readers');

javaaddpath('krpc-java-0.4.8.jar');
javaaddpath('javatuples-1.2.jar');
javaaddpath('protobuf-java-3.12.2.jar');

run('bus_startup')

% http://krpc.github.io/krpc/java/client.html