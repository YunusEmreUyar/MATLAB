clc
clear

%Bisection Method for Root Finding
%m = (a+b)/2

f = inline('sin(x)+2*x');

a = -1;
b = 1;
m = (a+b)/2;

while abs(f(m)) > .000001
    if f(a) * f(m) > 0
        a = m;
    else
        b = m;
    end
    m = (a+b)/2;
end
root = m;

fprintf('The root is %d', root);
