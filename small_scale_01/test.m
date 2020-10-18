t = tcpip("127.0.0.1", 5410)
t.Terminator = 'CR';
fopen(t)
pause(1);
%read(t)
%disp(fscanf(t))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
disp(fscanf(t, "%s"))
%flushinput(t);

disp(t);
fprintf(t, "1\n")
pause(1);
fprintf(t, "CLEARSCREEN.\n")

assignin('base', 'rcs_read_1', char(fread(t, t.BytesAvailable)'))
pause(0.1)
fprintf(t, "PRINT RCS.\n")
pause(0.1)
assignin('base', 'rcs_read_2', char(fread(t, t.BytesAvailable)'))


%%
sim('main', 10);

%%
% disp(fscanf(t, "%s"));
% fprintf(t, "SAS ON.\n")
% fprintf(t, "SAS OFF.\n")
pause(1);

%%
disp(t);
disp(fscanf(t, "%s"))
fclose(t)
delete(t)
clear t

% %% Here's something else
% t = tcpip("127.0.0.1", 5410);
% t.Terminator = 'CR';
% set(t, 'InputBufferSize', 1000000);
% set(t, 'OutputBufferSize', 1000000);
% 
% fopen(t);
% 
% MyTelnetCommand = '1\n';
% MyTelnetCommandConverted = double(MyTelnetCommand)';
% fprintf(t, MyTelnetCommandConverted);
% 
% MyTelnetCommand = 'SAS OFF.\n';
% MyTelnetCommandConverted = double(MyTelnetCommand)';
% fprintf(t, MyTelnetCommandConverted);
% 
% fclose(t);
% delete(t);
% clear t
% 
% %% Here's yet another something else
% t = tcpip('127.0.0.1', 5410);
% t.Terminator = 'CR';
% set(t, 'InputBufferSize', 1000000);
% set(t, 'OutputBufferSize', 1000000);
% 
% fopen(t);
% 
% % MyTelnetCommand = '1\n';
% % MyTelnetCommandConverted = double(MyTelnetCommand)';
% % fprintf(t, MyTelnetCommandConverted);
% t.write('1');
% 
% % MyTelnetCommand = 'SAS OFF.\n';
% % MyTelnetCommandConverted = double(MyTelnetCommand)';
% % fprintf(t, MyTelnetCommandConverted);
% 
% fclose(t);
% delete(t);
% clear t