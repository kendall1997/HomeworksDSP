% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

pkg load signal;

figure('name', 'Exercise #13 - Digital Signal Processing');
subplot(2,1,1); 
hold on;
zplane([-10, 9, 7, 8, 0, -5, 3]);
title("Fase mixta");
hold off;
subplot(2,1,2);
hold on; 
zplane([-5 -4 3 4 0 -2 -1]);
title("Fase minima");
hold off;