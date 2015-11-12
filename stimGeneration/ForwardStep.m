classdef ForwardStep < AuditoryStimulus
    % Basic subclass for making square waves
    %
    % AVB 2015
    
    properties
        stepSize            = 1;
        stepDur             = 10;
    end
    
    properties (Dependent = true, SetAccess = private)
        stimulus
        description
    end
    
    methods
       
        %%------Calculate Dependents-----------------------------------------------------------------
        function stimulus = get.stimulus(obj)
            
            % Make sw
            time = 0:1/obj.sampleRate:obj.stepDur-(1/obj.sampleRate);
            sw = ones(length(time),1);

            % Scale the stim to the maximum voltage in the amp
            stimulus = sw*obj.maxVoltage;
            
            % Add pads
            stimulus = obj.addPad(stimulus);
        end
        
        function description = get.description(obj)
            description = ['Step ',num2str(obj.stepSize),'V ',num2str(obj.stepDur),'s'];
        end
        
    end
    
end


