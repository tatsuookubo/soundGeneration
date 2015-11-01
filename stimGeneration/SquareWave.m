classdef SquareWave < AuditoryStimulus
    % Basic subclass for making square waves
    %
    % AVB 2015
    
    properties
        freq                = 1;
        waveDur             = 10;
    end
    
    properties (Dependent = true, SetAccess = private)
        stimulus
        description
    end
    
    methods
       
        %%------Calculate Dependents-----------------------------------------------------------------
        function stimulus = get.stimulus(obj)
            
            % Make sw
            time = 0:1/obj.sampleRate:obj.waveDur-(1/obj.sampleRate);
            sw = square(time.*pi*obj.freq*2)';

            % Scale the stim to the maximum voltage in the amp
            stimulus = sw*obj.maxVoltage;
            
            % Add pads
            stimulus = obj.addPad(stimulus);
        end
        
        function description = get.description(obj)
            description = [num2str(obj.freq),'Hz square wave'];
        end
        
    end
    
end


