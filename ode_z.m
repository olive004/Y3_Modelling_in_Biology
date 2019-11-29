% CW1 #9 non-dimensionalised modified growth model:
function z_dot = ode_z(t, z,gamma)

z_dot = z*(1 - gamma - z);
    

end
