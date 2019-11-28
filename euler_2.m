% Implements x(t + h) = x(t) + h [?k x(t)]
function x = euler_2( x0, h, k, tspan)

t = tspan(1):h:tspan(2);
x = zeros(1,length(t));
x(1) = x0;
for index = 1:(length(t)-1)
    x(index+1) = x(index) + h * -k * x(index);
end

end