% Training 5: system of ODEs

% x1 = y
% dx1 = x2
% dx2 = - nu*x2 - x1

function system = ode_5_sys(t, x, nu) 

system = [ 
    x(2);  % diff(x(1)) = x(2)
    - nu*x(2) - x(1) ]; % diff(x(2)) = - nu*x(2) - x(1)

end