% Training 3
% Ex 1: matlab code to solve x(t+h) = x(t) + h[-kx(t)] + sigma*root(h) *
% randn
clear all
close

k = 3/16;, h = 0.01;, x0 = 6;, tspan = [0, 10];, sigma = 0.2;


% 1a) Run and plot euler 20 times
run_count = 20;
t = tspan(1):h:tspan(2);
x = euler_trajectories_3(run_count, x0, h, k, t, sigma);

figure(1)
title('Gaussian noise in Euler trajectory estimation')
hold on
for index = 1:run_count
    plot(t,x(index,:))
end
hold off


% 1b) Calculate the mean and plot
x_ave_traj = mean(x, 1);   % Mean of all of the trajectories

x_ana = x0.*exp(-k.*t);
mse_20 = immse(x_ave_traj, x_ana);

figure(2);
plot(t,x_ana,'K','LineWidth',1)  % Bold line boi
hold on
plot(t, x_ave_traj, 'B','LineWidth',2) % '--r','LineWidth',3)
hold off



% Ex 2
% 2a) Histogram

x0 = 0;, sigma = 0.1;, h = 0.01;, tspan = [0,1000];
t = tspan(1):h:tspan(2);

run_count = 100;
hist_bins = 10;
x_large_t = euler_trajectories_3(run_count, x0, h,k,t,sigma);

figure(3) 
histogram(x_large_t(:,end),hist_bins);
title('Histogram of stochastic Euler');



% 2b) Histogram with larger sigma

sigma = 5;
t = tspan(1):h:tspan(2);

x_large_sig = euler_trajectories_3(run_count, x0, h,k,t,sigma);

figure(4);
histogram(x_large_sig(:,end),hist_bins);
title('Histogram of very stochastic Euler');


% 2c) Mean and std 

mean_large_t = mean(x_large_t(:,end));
std_large_t = std(x_large_t(:,end));

mean_large_sig = mean(x_large_sig(:,end));
std_large_sig = std(x_large_sig(:,end));

std_comp = std_large_sig/std_large_t


hold off   % idk it keeps plotting otherwise on subsequent runs


% 2c) EXPLANATION: The standard deviation for the last point of the 
% Euler trajectories is about 44 times larger for the trajectories
% from 2c with the larger sigma than for the traj's from 2b, with a 
% sigma value 1/10 as larger. 





 