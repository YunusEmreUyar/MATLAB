clc
clear

% Matlab has quad function initially.
% We can easily use this command for calculating numerical integration
% Quad function implements 'adaptive simpson method' itself.

integ = quad('x.^2 - sin(x)', 1, 5);

display(integ)
