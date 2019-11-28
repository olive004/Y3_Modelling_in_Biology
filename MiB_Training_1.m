% Training Coursework 1

% 1. Consider a one-dimensional linear ODE ?x = ?kx, with 
% k = 3/5. Take as initial condition x0 = 4 and use Matlab 
% to find the solution of this equation numerically for 
% 0 ? t ? 10. Plot x as a function of time.


tspan = [0 10];
x0 = 4;
k = 3/5;

[t dx_sol] = ode45(@(t,x) ode_fun1(t,x,k), tspan, x0)

figure(1)
subplot(2,1,1)
plot(t, dx_sol)
xlabel('time')
ylabel('ode solution x')
title('Q1')


% 2. Obtain the analytical solution to this equation and plot 
% it on the same figure. Use Matlab to obtain the mean squared
% error of the numerical solution with respect to the true 
% analytical solution.

syms x(t) k
eqn_ode_fun1 = diff(x,t) == -k * x;

analyt_sol_x = dsolve(eqn_ode_fun1, x0)

subplot(2,1,2)
hold on
plot(t, analyt_sol_x)
xlabel('time')
ylabel('analytical solution x')
title('Q2')

% MSE (using immse(X, Y))
err = immse(dx_sol, analyt_sol_x) 










