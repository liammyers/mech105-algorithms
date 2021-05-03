% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = linspace(0, 0.8, 100);

% Calculate the values of q
format long g    
q = q0 * (exp(1).^((-R.*t)./(2.*L))) .* cos(sqrt(1./(L.*C)- (R./(2.*L)).^2 ).*t); 

% Plot q vs t
subplot(2,1,1);
plot(t,q,'LineWidth',2); %no unit specified
title('Capacitor One');
xlabel('Time ()'); %no unit specified
ylabel('Capacitor charge ()'); %no unit specified

% Make the capacitor 10x bigger
C = 0.0005;
q2 = q0 * (exp(1).^((-R.*t)./(2.*L))) .* cos(sqrt(1./(L.*C)- (R./(2.*L)).^2 ).*t); 

% Plot q2 vs t
subplot(2,1,2);
plot(t,q2,'LineWidth',2);
title('Capacitor Two');
xlabel('Time ()'); %no unit specified
ylabel('Capacitor charge ()'); %no unit specified