classdef CourtshipSong < AuditoryStimulus
    % Basic subclass for courtship song
    %
    % AVB 2015
    properties
        description     = 'Courtship song';
    end
    
    properties (Dependent = true, SetAccess = private)
        stimulus
    end
    
    methods
        %%------Constructor-----------------------------------------------------------------
        function stimulus = get.stimulus(obj)
            % Read in courtship song recording
            [stimulus, obj.sampleRate] = audioread('C:\Users\Alex\Documents\GitHub\soundGeneration\stimGeneration\courtshipSamps\LongCourtshipSong_Standard.wav');
            voltagePeak = max(abs(stimulus));
            scalingFactor = obj.maxVoltage/voltagePeak; 
            stimulus = stimulus.*scalingFactor;
            
            % Add pause at the beginning of of the stim
            stimulus = obj.addPad(stimulus);
        end
       
    end
    
end


