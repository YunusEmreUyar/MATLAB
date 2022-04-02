clc
clear

funct = inline('4*exp(0.8*x) - 0.5*y');

targetX = input('Enter x value.');

h = 0.1;
initialX = 0;
initialY = 2;

while initialX <= targetX
    x1 = initialX + h;
    y1 = initialY + h*funct(initialX, initialY);
    initialX = x1;
    initialY = y1;
end

fprintf('y = %.2f for x = %.2f', initialX, initialY);
