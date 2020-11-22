clc 
clear

%Newton Method Implementation for Root Finding
%x1 = x0 - (f(x0)/f1(x0))

%Example function is 'sin(x)-2x'
f = inline('sin(x) - 2*x');
fd = inline('cos(x) -2');

%Declaring axises
x = -1:.1:1;
y = f(x);

%Drawing graph
plot(x,y);
title('sin(x)-2x')
grid

x0 = -.1;
while abs(f(x0)) > .000001
    x1 = x0 - (f(x0)/fd(x0));
    x0 = x1;
end

root = x0;
fprintf('The root is %d',root);