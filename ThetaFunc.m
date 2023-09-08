
% This function calculates the value of theta from figure 1b where theta is
% in radians and t is the time in seconds
% magnitude increase linearly with time to max amp wave of 3 radians @ 30
% sec

function theta = ThetaFunc(t)
% start at 0 radians
%4 oscillations in 30 seconds
A=3;
F= 3.1415926535897932384626433832795028841/3.75; %More digits are more better. 

% 0-30 seconds, max amp wave of 3 radians
if (t>=0) && (t<30)
H1=((A.*t)./30).*sin(F.*t)
    theta=H1;
    return
% else
%     theta=0;
end

%30-60 seconds, amp goes back to zero
% H2=-((At)/t)*cos(F*t);
if (t>=30) && (t<=60)
H2=-((A.*(t-60))./30).*sin(F.*t);
    theta=H2;
else
    theta=0;
end


% error('Time must be between 0 and 60 seconds.')


theta;

end