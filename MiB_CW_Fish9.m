% CW 1 
clear all;
close all;

% 9. Confirm the results of the previous two parts by using Matlab’s ode45 to numerically integrate model (3)
% for ? = 0.5 and ? = 1.2. Use an initial simulation time of 0 and a final simulation time of 20. For each
% value of ? plot 11 trajectories on the same figure with initial conditions z0 = 0, z0 = 0.1, . . . , z0 = 1.
% Use different colours for each trajectory (for allocating random colours, you might want check out the
% command hold all in MATLAB). (15/100)
% 10. Say the fishermen want to maximise the long-term (asymptotic) amount of fish harvested per unit time.
% What proportion of the stock of fish would you recommend them to harvest per unit time (i.e., what
% should the optimal value of q be)?


tspan = [0 20]; % Interval
gamma = [0 20];    % Gamma parameter
z0 = 0:0.1:1;   % Initial condition

for z00 = z0
    for gamma = [0 20]
        [t, z_sol] = ode45(@(t,z) ode_z(t,z,gamma), tspan, z00);
    end;
    
    figure(1); hold all
    plot3(gamma, t, z_sol); title(['Num solution to dz/dtau, gamma = ' num2str(gamma)]);
    lgd = legend(strsplit(num2str(z0))); title(lgd, 'Initial val');
    xlabel('tau'); ylabel('z');

end;








