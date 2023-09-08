close all
clear
clc

% Input Parameters
E=2*10^10;
A=0.01;
w=10;
l=12;
h=10;
t=[0:60];
F=50000;


% Calculate theta and displacements
for j=[1:61];
theta(:,j)=ThetaFunc(t(:,j)); %theta

[x(:,j), y(:,j)] = PEMax(F,theta(:,j),E,A,w,l,h) %x any y displacements

total_disp = sqrt((x.^2)+(y.^2)) %total displacement
end

% Plot figures
figure %theta vs time
plot(t,theta,'r');
xlabel('Time (Seconds)')
ylabel('Angle Theta (Radians)')

figure %xdisp vs time
plot(t,x*(10^3),'r') %Convert from meters to mm
xlabel('Time (Seconds)')
ylabel('X Displacement (mm)')

figure %ydisp vs time
plot(t,y*(10^3),'r')
xlabel('Time (Seconds)')
ylabel('Y Displacement (mm)')

figure %totaldisp vs time
plot(x*(10^3),y*(10^3),'r')
xlabel('X Displacement (mm)')
ylabel('Y Displacement (mm)') 

figure %ydisp vs xdisp
plot(t,total_disp*(10^3),'r')
xlabel('Time (Seconds)')
ylabel('Total Displacement (mm)')

