% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
% It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
% Diameter indicates something specific but the number 25 could mean anything
cylRad = 12.5; 
cylMaxHeight = 19;

% Specify the height of the water
h = 20;

% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
if h > 0 && h <= 33
    if h <= cylMaxHeight
        v = pi * (cylRad)^2 * h;
    elseif h > cylMaxHeight
        cylVol = pi * (cylRad)^2 * cylMaxHeight;
        frustRad = 10.5*(h-19)/14 + cylRad; %calculates frustum radius at some value h.
        frustVol = (pi/3) * (h-19) * (frustRad^2 + cylRad^2 + frustRad*cylRad); 
        v = cylVol + frustVol;
    else
        error('Height invalid');
    end
else
    error('Height value outside of parameters');
end