function measurePiezoDCOffset

s = daq.createSession ('ni');
s.Rate = 10e3; 
ai = s.addAnalogInputChannel('Dev1',8, 'Voltage'); %this will be single ended because 'Differential' on this device is not supported
ai(1).InputType = 'SingleEnded';
% 
% ai(1).Range = [-5 5];
% ai(1).Name = 'PiezoCopy';
% ai(2).Range = [-10 10];
% ai(2).Name = 'SensorMonitor';
% ai(3).Range = [-5 5];
% ai(3).Name = 'StrobeOut';

%%  read DC offset first, and do again in case you need to tweak
DC_offset = startForeground(s);
DC_offset = mean(DC_offset);
DC_offset = DC_offset(1);
fprintf('The DC offset is set at %f Volts\n', DC_offset)
