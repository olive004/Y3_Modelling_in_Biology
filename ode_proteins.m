% ODE Equation of the proteins y and x
function system1 = ode_proteins(t, protein,alpha,beta,gamma)

system1 = [ 
    alpha./(1+protein(2).^4) - gamma.*protein(1);
    beta./(1+protein(1).^4) - gamma.*protein(2) ];
    

end
