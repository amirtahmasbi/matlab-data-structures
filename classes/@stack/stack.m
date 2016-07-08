classdef stack < handle
    % The class stack extends handle
    % Implements a stack
    % 
    % Created on 6/29/2016
    % By Amir Tahmasbi
    
    % --------------------- properties ------------------ %
    properties (Access = private)
        data;
        stackPointer;
    end
    properties (SetAccess = private)
        stackSize = 512;
    end
    
    % --------------------- methods --------------------- %
    methods
        % class constructor
        function obj = stack(stackSize)
            if nargin>0
                obj.stackSize = stackSize;
            end
            obj.stackPointer = 0;
            obj.data = cell(1,obj.stackSize);
        end
        % push method
        function obj = push(obj, entry)
            if obj.stackPointer < obj.stackSize
                obj.stackPointer = obj.stackPointer + 1;
                obj.data{obj.stackPointer} = entry;
            else
                error('Stack overflow.');
            end
        end
        % pop method
        function output = pop(obj)
            if obj.stackPointer > 0 
                output = obj.data{obj.stackPointer};
                obj.stackPointer = obj.stackPointer - 1;
            else
               error('The stack is empty.'); 
            end
        end
        % isempty method
        function output = isempty(obj)
            output = false;
            if ~obj.stackPointer
                output = true; 
            end
        end
        % isfull method
        function output = isfull(obj)
            output = false;
            if obj.stackPointer == obj.stackSize
                output = true; 
            end
        end
        % getSize method
        function output = getSize(obj)
            output = obj.stackPointer;
        end
        % top method
        function output = top(obj)
            if obj.stackPointer > 0 
                output = obj.data{obj.stackPointer};
            else
               error('The stack is empty.'); 
            end
        end
    end
end