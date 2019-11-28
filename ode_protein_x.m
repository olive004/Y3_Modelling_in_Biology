% ODE Equation of the x protein dx/dt
function dx = ode_protein_x(x, y, alpha, gamma)

dx = alpha/(1+y^4) - gamma*x

end