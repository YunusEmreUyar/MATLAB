clc
clear

sens = 5;
point = 2* sens + 1;

a = 1;
b = 5;
h = (b-a)/(2*sens);
x = a:h:b;
y = x.'2 - sin(x);

integ = (h/3) * ( y(1) + 4*sum(y(2:2:point-1)) + 2*sum(y(3:2:point-2)) + y(point) );

display(integ)
