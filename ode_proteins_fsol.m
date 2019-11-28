% ODE Equation of the proteins y and x for the fsolve
function system1 = ode_proteins_fsol(protein)

alpha = 1;
beta = 1;
gamma = 0.3;

system1 = [ 
    alpha./ ((1+init_y.^4).*gamma);
    beta./ ((1+init_x.^4).*gamma) ];
    

end
