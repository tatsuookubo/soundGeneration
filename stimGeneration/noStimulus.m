classdef noStimulus < AuditoryStimulus
    % Basic subclass for making just the pad and no stimulus
    
    properties (Dependent = true, SetAccess = private)
        stimulus
    end
    
    methods
        
        %%------Calculate Dependents-----------------------------------------------------------------
        function stimulus = get.stimulus(obj)
            % Make a zero stimulus that is the length of start pad
            stimulus = [];
            stimulus = obj.addPad(stimulus);
        end
        

    end
end
