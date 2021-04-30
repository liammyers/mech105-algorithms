% Given experimental data
t_exp = 10:10:60;
c_exp = [3.4 2.6 1.6 1.3 1.0 0.5];


% Expected function
t_func = 0:0.5:70; %time from 0 to 70 min, 30 sec increments
c_func = 4.84 .* exp(1).^(-0.034.*t_func);


% Plot
plot(t_func,c_func,'g--',t_exp,c_exp,'rd','LineWidth',2);
title('Aq. Bromide Photodegradation');
xlabel('Time (min)');
ylabel('Concentration (ppm)')
legend('Expected','Measured')