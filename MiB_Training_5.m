% Training 5
clear all
close all
% 1. Equation as system of two first order ODEs 

x0 = [2,10];
tspan = [0,100];
nu_nums = [];

for nu = [0,0.03,0.5,1,5,7];

nu_nums = [nu_nums, nu];

[t, sys1_sol] = ode45(@(t,x) ode_5_sys(t,x,nu), tspan, x0);


% Plot time-courses y and y'
figure(1)
hold on
plot(t, sys1_sol(:, 1), 'Linewidth',2)
xlabel('time')
ylabel('ode solution y')
title('Q1')
legendtext = num2str(nu_nums);
legend(strsplit(legendtext))

% 2. Phase space: plot y' vs y

figure(2) 
hold on 
plot(sys1_sol(:, 1), sys1_sol(:, 2))
xlabel('y')
ylabel('dy/dt')
title('Q2')
legendtext = num2str(nu_nums);
legend(strsplit(legendtext))



% 3. Explain where behavior changes
% y'' + nu*y' + y = 0
% y = ce^(lambda*t)
% lambda^2 + lambda*nu +1 = 0
% lambda = (-nu +- root(nu^2 - 4)) / 2

% Because the system only oscillates when there is an imaginary 
% component in y, the value that determines this is inside 
% root(nu^2 - 4), which means that there is an imaginary term
% and oscillatory behavior when nu > 2.


end




