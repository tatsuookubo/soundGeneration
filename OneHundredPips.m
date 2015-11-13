% stim = PipStimulus; 
% stim.maxVoltage = 1; 
% stim.numPips = 60; 
% plot(stim) 

stim = SineWave; 
stim.carrierFreqHz = 50; 
stim.maxVoltage = 2; 
plot(stim) 
for i = 1:100 
    playSound(stim) 
end
