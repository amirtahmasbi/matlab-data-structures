% This script tests the stack class
% 
% Created on 7/8/2016
% By Amir Tahmasbi

% create a stack of size 1024 cells
Stack = stack(1024);

Stack.isempty()
Stack.push('Amir');
Stack.isempty()
Stack.top()
Stack.pop