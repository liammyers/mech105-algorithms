function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

%inputs:
%func - function being evaluated
%xl - lower guess
%xu - upper guess
%es - desired relative error (default to 0.0001%)
%maxit - maximum number of iterations to use (default to 200)
%varargin - any additional paramters used by function

%outputs:
%root - estimated root location
%fx - function evaluated at the root location
%ea - approximate relative error (%)
%iter - number of iterations performed

%error checking
if nargin < 3
    error("Not enough input arguements!");
end
if xl == xu
    error("Lower and upper bounds cannot be equal!");
elseif func(xl) > func(xu)
    error("Lower bound cannot be greater than upper bound!");
end
if func(xl) == 0
    fprintf("Root found at lower bound!");
elseif func(xu) == 0
    fprintf("Root found at upper bound!");
end

%defaults
if nargin < 6
    es = 1E-6;
    maxit = 200;
end
ea = 0.000001; %temp
iter = 1; %temp
%prev = 100;

%root estimation
%while abs(ea) > es
    %root = xu - (func(xu)*(xl-xu)) / (func(xl)-func(xu));
    %ea = abs((root-prev)/root)*1
    %prev = root; %temp
    %iter = iter + 1;
    %end
    
root = xu - (func(xu)*(xl-xu)) / (func(xl)-func(xu));
fx = func(root); %temp

end