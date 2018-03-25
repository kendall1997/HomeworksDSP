% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Lets create a Window

figure('name', 'Exercise #2 - Digital Signal Processing');

h = [1, -1];

x = [1,0,0,0,0,1];

c = conv(x, h);

c2 = conv(ones(1, 30), h);

subplot(2,2,1); p1 = stem(h); title('h(n)');
subplot(2,2,2); p2 = stem(x); title('x(n)');
subplot(2,2,3); p3 = stem(c); title('x(n)*h(n)');
subplot(2,2,4); p3 = stem(c2); title('k*h(n)');

% Filtro pasa bajas, con constantes solo devuelve 0
