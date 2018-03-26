% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Load the package for the xcorr function
pkg load signal;
%{
% Window for the signal 1
figure('name', 'Exercise #6.1 - Digital Signal Processing');

load inputsignal_xn1.mat;

% Correlation at 21
[acor,lag] = xcorr(xn,xn, 21);

subplot(2,1,1); p1 = stem(xn); title('xn1');
subplot(2,1,2); p2 = stem(lag,acor/acor(22)); 
title('xcorr(xn1): Muestra un periodo cada 7');

% Window for the signal 2
figure('name', 'Exercise #6.2 - Digital Signal Processing');

load inputsignal_xn2.mat;

% Correlation at 126
[acor,lag] = xcorr(xn,xn, 126);

subplot(2,1,1); p1 = stem(xn); title('xn2');
subplot(2,1,2); p2 = stem(lag,acor/acor(127)); 
title('xcorr(xn2): Muestra un periodo cada 63');

% Window for the signal 3
figure('name', 'Exercise #6.3 - Digital Signal Processing');

load inputsignal_xn3.mat;

% Correlation at 1000
[acor,lag] = xcorr(xn,xn, 1000);

subplot(2,1,1); p1 = stem(xn); title('xn3');
subplot(2,1,2); p2 = stem(lag,acor/acor(1001)); 
title('xcorr(xn3): Muestra un periodo cada 500');

% Window for the signal 4
figure('name', 'Exercise #6.4 - Digital Signal Processing');

load inputsignal_xn4.mat;

% Correlation at 4000
[acor,lag] = xcorr(xn,xn, 4000);

subplot(2,1,1); p1 = stem(xn); title('xn4');
subplot(2,1,2); p2 = stem(lag,acor/acor(4001)); 
title('xcorr(xn4): Muestra un periodo cada 2000');
%}
% Window for the signal 5
figure('name', 'Exercise #6.5 - Digital Signal Processing');

load inputsignal_xn5.mat;

% Correlation at 2100
[acor,lag] = xcorr(xn,xn, 5000);

subplot(2,1,1); p1 = stem(xn); title('xn5');
subplot(2,1,2); p2 = stem(lag,(acor/acor(5001))); 
title('xcorr(xn5): No tiene periodo, el primer maximo es 314, el siguiente 874');
