% CW1 Q2

% Find analytically the fixed points of the system (ode_bifurcation)

a = 1;  % Any non-zero constant
b = 4;  % Parameter

syms x1(t) x2(t);
ode1 = diff(x1) == a + (x(1)^2) *x2 - (b+1)*x1;
ode2 = diff(x2) == b*x1 - (x1^2)*x2;
odes = [ode1; ode2];
cond = x(0) == x0;
analytical_sol = dsolve(odes, cond);


t = tspan(1):h:tspan(2);
analytical_sol = eval(analytical_sol);
