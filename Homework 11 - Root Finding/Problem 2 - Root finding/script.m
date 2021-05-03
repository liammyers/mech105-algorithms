% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
format long
theta = 0:90;
func = @(theta) (mu*m*g) ./ (cosd(theta)+mu.*sind(theta)) - F;

% THINK, what makes range sense for angle?
lower_bound = 30; %deg
upper_bound = 90; %deg

% Plot your function. Does plotting give you an idea about where the root is?
plot(theta, func(theta))
xlabel("Angle (deg.)");
ylabel("Force (N)");
grid on

% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);
angle = bisect(func, lower_bound, upper_bound);
fprintf("The root is equal to %f",angle)

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations