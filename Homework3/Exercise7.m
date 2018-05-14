% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

w = -pi:0.01:pi;
j = sqrt(-1);

f = (1/2) * (1 - cos(w) + j* sin(w));
H = (1/2) * sqrt( 2 - 2 * cos(w) );

% El filtro es 1/2 * (1-e^(-jw))

% Para 
H10 = (1/2) * sqrt( 2 - 2 * cos(pi/200) );
H2000 = (1/2) * sqrt( 2 - 2 * cos(pi) );
figure('name', 'Exercise #7 - Digital Signal Processing');
subplot(2,1,1); 
hold on;
p1 = plot(w,H); 
p2 = stem((pi/200), H10);
p3 = stem((pi), H2000);
title('Magnitud');
hold off;
subplot(2,1,2);
p4 = plot(w,angle(f));
title('Angulo');
