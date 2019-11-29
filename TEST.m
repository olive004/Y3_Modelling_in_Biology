a=1; b=2; c=a*(b^2-1/(b^2));
f = @(t,x)[x(2)*x(3)-a*x(1)
    x(1)*(x(3)-c)-a*x(2)
    1-x(1)*x(2)];
t=linspace(0,50,1000);
[t,x]=ode45(f,t,[1 0 1]);
cm = jet(numel(t));
figure
hold all
for k = 1:size(x,1)-1
    hl = plot3([x(k,1),x(k+1,1)], [x(k,2),x(k+1,2)], [x(k,3),x(k+1,3)]);
    set(hl, 'LineStyle','-.', 'Color',cm(k,:));
end
hold off
grid on
view(50, 30)