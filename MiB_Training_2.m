% Training cw 2
 
% 1. Plot the numerical solution and the analytical solution1. Calculate 
% the mean squared error of the numerical solution.

tspan = [0 10];

h = 0.01;
k = 0.25;
x0 = 5;

numerical_sol = euler_2(x0, h, k, tspan);


syms x(t);
eqn = diff(x,t) == -k * x;
cond = x(0) == x0;
analytical_eqn = dsolve(eqn, cond);


t = tspan(1):h:tspan(2);
analytical_sol = eval(analytical_eqn);


t = tspan(1):h:tspan(2);

figure(1)
subplot(2,1,1)
plot(t, numerical_sol)
title('Numerical sol Euler')
xlabel('t')
ylabel('x')
hold on 
subplot(2,1,2)
plot(t, analytical_sol)
title('Analytical sol Euler')
xlabel('t')
ylabel('x')


% MSE

mean_square_error = immse(numerical_sol, analytical_sol)





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Repeat the numerical calculation with h = 0.001 and calculate 
% the mean squared error. Explain the differences for both values 
% of h.


h = 0.001;

numerical_sol = euler_2(x0, h, k, tspan);
t = tspan(1):h:tspan(2);
analytical_sol = eval(analytical_eqn);

mean_square_error_2 = immse(numerical_sol, analytical_sol)


% The MSE is lower for the Euler method with the smaller step size
% because as the step size to the next t approaches 0, the solution 
% approaches the analytical solution.
