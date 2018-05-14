% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

pkg load signal;

w = -pi:0.01:pi;
j = sqrt(-1);

zplane([-1 1 -3 1 -6], [1 2 2]);

figure('name', 'Exercise #11 - Digital Signal Processing');
y = [-1 1 -3 1 -6];
x = [1 2 2];

hold on;
stem(x, 'Color', 'cyan');
stem(y);
hold off;