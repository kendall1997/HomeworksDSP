% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

w = -pi:0.01:pi;
j = sqrt(-1);

b0 = 0.366176641;
w0 = 0.12*pi;

f = b0*(1 - 2*cos(w0)*exp(-j*w) + exp(-2*j*w));

H = b0 * sqrt( 2 - 4*cos(w0)*cos(w) + 2*cos(2*w) + 4*cos(w0)^2 - 4*cos(w0));

figure('name', 'Exercise #9 - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H); title('Magnitud');

subplot(2,1,2); p3 = plot(w,angle(f)); title('Fase');
