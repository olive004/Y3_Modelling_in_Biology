% CW1 Q2 System of x_dot equations
function sys1 = ode_bifurcation(t,x,a,b)

sys1 = [
    a + (x(1)^2) *x(2) - (b+1)x(1) - x(3)
    b*(x(1)) - (x(1)^2)*x(2) - x(4)
    ];


end;