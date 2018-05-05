% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

w = -pi:0.01:pi;
j = sqrt(-1);

% For each system, first we obtain the frequency responce,
% then we get the magnitude and the angle:
% |H(w)| = sqrt(x^2 + y^2)
% <H(w) = atan2 (y, x) or angle(z)

% 1.a) H(w) = 1/2 + 1/2 e^-jw

f1 = 1/2 * (1 + cos(w) - j* sin(w));

H1 = sqrt( 1/2 + 1/2 * cos(w) );

figure('name', 'Exercise #1.a - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H1); title('Magnitud');
subplot(2,1,2); p2 = plot(w,angle(f1)); title('Angulo');

% 1.b) H(w) = 1/2 - 1/2 e^-jw

f2 = 1/2 * (1 - cos(w) + j* sin(w));

H2 = sqrt( 1/2 - 1/2 * cos(w) );

figure('name', 'Exercise #1.b - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H2); title('Magnitud');
subplot(2,1,2); p2 = plot(w,angle(f2)); title('Angulo');

% 1.c) H(w) = 2 - 2 e^-2jw , y(n) = 2[x(n) - x(n-2)]

f3 = 2 * (1 - cos(2 * w) + j * sin(2 * w));

H3 = sqrt( 8 - 8 * cos(2 * w) );

figure('name', 'Exercise #1.c - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H3); title('Magnitud');
subplot(2,1,2); p2 = plot(w,angle(f3)); title('Angulo');


% 1.d) H(w) = 1 - 2 e^-2jw

f4 = 1 - 2*cos(2 * w) + j * 2*sin(2 * w);

H4 = sqrt( 3 - 4 * cos(2 * w) );

figure('name', 'Exercise #1.d - Digital Signal Processing');
subplot(2,1,1); p1 = plot(w,H4); title('Magnitud');
subplot(2,1,2); p2 = plot(w,angle(f4)); title('Angulo');
