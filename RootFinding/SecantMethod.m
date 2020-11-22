clc
clear

%Secant Method for Root Finding

%x2 = x1- ( f(x1) *( (x1-x0)/(f(x1) - f(x0) ) ) )

f = inline('sin(x)-2*x');

x0 = -.1;
x1 = -.2;

while abs(f(x0)) > .000001
    x2 = x1 - f(x1) * ((x1-x0)/(f(x1)-f(x0)));
    x0 = x1;
    x1 = x2;
end

root = x0;
fprintf('The root is %d',root);
