classdef stack < handle
    % By: Amir Tahmasbi
    % Date: 6/29/2016
    % --------------------- properties ------------------ %
    properties (Access = private)
        Data;
        SP;
        stackSize = 512;
    end
    % --------------------- methods --------------------- %
    methods
        % class constructor
        function obj = stack(stackSize)
            if nargin>0
                obj.stackSize = stackSize;
            end
            obj.SP = 0;
            obj.Data = cell(1,obj.stackSize);
        end
        % push method
        function obj = push(obj, entry)
            if obj.SP < obj.stackSize
                obj.SP = obj.SP + 1;
                obj.Data{obj.SP} = entry;
            else
                error('The stack is full.');
            end
        end
        % pop method
        function output = pop(obj)
            if obj.SP > 0 
                output = obj.Data{obj.SP};
                obj.SP = obj.SP - 1;
            else
               error('The stack is empty.'); 
            end
        end
        % isempty method
        function output = isempty(obj)
            output = false;
            if ~obj.SP
                output = true; 
            end
        end
        % isfull method
        function output = isfull(obj)
            output = false;
            if obj.SP == obj.stackSize
                output = true; 
            end
        end
        % getSize method
        function output = getSize(obj)
            output = obj.SP;
        end
        % top method
        function output = top(obj)
            if obj.SP > 0 
                output = obj.Data{obj.SP};
            else
               error('The stack is empty.'); 
            end
        end
    end
end