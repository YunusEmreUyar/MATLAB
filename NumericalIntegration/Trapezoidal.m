clc
clear

sens = 60;
point = sens + 1;
a = 1;
b = 10;
h = (b - a ) / sens;
x = a:h:b;

y = x.^ 2 - sin(x);

integration = (h/2) * (y(1) + 2 * sum(y(2:point-1)) + y(point) )

display(integration)
