% Runs euler 3 a set amount of times, returns vector of eulers
function x = euler_trajectories_3(run_count, x0, h, k, t, sigma)

x = zeros(run_count, length(t));

for index = 1:run_count
    x(index, :) = euler_3(x0, h, k, t, sigma);

end

end