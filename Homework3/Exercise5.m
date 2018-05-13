% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

w = -pi:0.01:pi;
j = sqrt(-1);

b0 = 1;
b1 = -0.44721;
b2 = 0.44721;

f = R + j*I;

R = b0 + b1 * cos(w) + b2 * cos(2*w);
I = -b1 * sin(w) - b2 * sin(2*w);

H = b0^2 + b1^2 + b2^2 + 2*b0*b1*cos(w) + 2*b0*b2*cos(2*w) + 2*b1*b2;
    
figure('name', 'Exercise #5 - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H); title('Magnitud');
subplot(2,1,2); p2 = plot(w,angle(f)); title('Angulo');
