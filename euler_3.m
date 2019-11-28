% Implements x(t + h) = x(t) + h [?k x(t)] + ??h * randn
function x = euler_3( x0, h, k, t, sigma)

x = zeros(1,length(t));   % Initialize a vector to hold the fxn
x(1) = x0;   % The first point in the function has been given to us
for index = 1:(length(t)-1)
    x(index+1) = x(index) + h * -k * x(index) + sigma * sqrt(h) * randn;
end

end