% Training 4
% Ex 1: Num solution of system of protein ODEs
clear all
close all

alpha = 1;
beta = 1;
gamma = 0.3;

x0 = [1, 2];

tspan = [0, 10];



[t, sys1_sol] = ode45(@(t,protein) ode_proteins(t,protein,alpha,beta,gamma), tspan, x0);


% Plot time-courses x(t) and y(t)
figure(1)
subplot(2,1,1)
plot(t, sys1_sol(:, 1), 'Linewidth',2)
xlabel('time')
ylabel('ode solution protein x')
title('Q1')


subplot(2,1,2)
plot(t, sys1_sol(:, 2), 'r')
xlabel('time')
ylabel('ode solution protein y')



% Ex 2: Nullclines of dx/dt and dy/dt

% x0 = [-1,1];
% syms x y;
% nullcline_eqn = alpha./(1+y.^4) - gamma.*x == beta./(1+x.^4) - gamma.*y;
% nullcline_x = alpha./(1+y.^4) - gamma.*x == 0;
% nullcline_y = beta./(1+x.^4) - gamma.*y == 0;

init_y = 0:0.1:5;
init_x = 0:0.1:5;
 
nullcline_x = alpha ./ gamma ./ (1+init_y.^4);
nullcline_y = beta ./ gamma ./ (1+ init_x.^4);

% x = a / g / (1+y^4)
% 
% y = b / g/ (1+x^4)

% Plot Nullclines
figure(2);
plot(init_y, nullcline_x, 'b')
hold on
plot(nullcline_y, init_x, 'Linewidth', 2)


intersections = fsolve(@ode_proteins_fsol, x0);









