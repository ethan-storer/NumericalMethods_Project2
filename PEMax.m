% This function calculates the (x,y) position which minimizes the potential
% energy from the PETruss function. To calculate the x and y displacement
% for a given se of parameters, you will need to use the fminserch
% function. 
function [x, y] = PEMax(F,theta,E,A,w,l,h)

f = @(x,y) PETruss(x, y, F, theta, E, A, w, l, h);

f_position = @(x) f(x(1), x(2));

% Set Initial guess for open minimaztion method.
x0 = [0,0];
% x0 = 0;

% Perform minimization
xmax = fminsearch(f_position,x0);
xmax;

x = xmax(1);
y = xmax(2);


end

% g = -10.2021
% h = -21.4348
