% ODE Equation of the y protein dy/dt
function dy = ode_protein_y(x, y, beta, gamma)

dy = beta/(1+x^4) - gamma*y

end