%% Pips 
stim = PipStimulus; 
stim.maxVoltage = 1; 
stim.numPips = 60; 
plot(stim) 
for i = 1:100 
    playSound(stim) 
end

%% SineWave
stim = SineWave; 
stim.carrierFreqHz = 50; 
stim.maxVoltage = 2; 
plot(stim) 
for i = 1:100 
    playSound(stim) 
end

%% Chipr
stim = Chirp;
stim.maxVoltage = 1;
stim.startPadDur = 5; 
stim.endPadDur = 10;
plot(stim)
for i = 1:100 
    playSound(stim) 
end
