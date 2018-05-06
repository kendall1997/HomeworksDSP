% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

w = -pi:0.01:pi;
j = sqrt(-1);


w0 = 5*pi/8;

b0 = 1/(2-2*cos(w0));

H = b0 * (1 - 2*cos(w0)*exp(-j*w) + exp(-2*j*w)); 

figure('name', 'Exercise #2 - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H); title('Magnitud');
subplot(2,1,2); p2 = plot(w,angle(H)); title('Angulo');
