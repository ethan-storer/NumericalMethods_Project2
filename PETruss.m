
% This function calculates the potential energy of the Fabbri evolution by
% modeling the beams as truss elements.

function PE = PETruss(x,y,F,theta,E,A,w,l,h)
clc
% PE=PEs-W
% K = EA/l
% Input Parameters


L1=l; %Length 1


%%Get L2
phi=asin(h/l); %Get phi
w1=L1.*cos(phi); %Get w1
w2=w-w1; % Get w2
L2=sqrt((h^2)+(w2^2));
K1=(E.*A)/L1; %Spring Constant 1
K2=(E.*A)/L2;%Spring Constant 2

%%Get new triangle
w1_loaded=w1+x;
w2_loaded=w-w1_loaded;

% L1_New= sqrt(((w1n+abs(w2n))^2)+((h+y)^2))%Length 1'

L1_loaded= sqrt(((w1_loaded).^2)+((h+y).^2));%Length 1'

L2_loaded= sqrt(((w2_loaded).^2)+((h+y).^2)); %Length 2'



% Spring work
PE_Spring1=0.5*K1*((L1_loaded-L1)^2);
PE_Spring2=0.5*K2*((L2_loaded-L2)^2);
PES=PE_Spring1+PE_Spring2;

% Distance Work, f components
Fx=F*sin(theta);
Fy=F*cos(theta);
Work=(Fx*(x))-(Fy*y);

PE=PES-Work;

end
% 11.24