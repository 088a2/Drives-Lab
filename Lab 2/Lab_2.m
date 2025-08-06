% Lab_2.m
% Lab-2 | Date: 06-08-2025

% MATLAB code to plot sin graphs

%#ok<*NOPTS>
%#ok<*IJCL> 

%% Plot 3 Phase sin graph

t = 0:0.01:2*pi
y1 = sin(t)
y2 = sin(t - (2 * pi / 3))
y3 = sin(t + (2 * pi / 3))
plot(t, y1, t, y2, t, y3)

xlabel('Time (s)')
ylabel('Amplitude')
title("230929228-Mrinal-3-Phase-Sine-Graph")

grid on
