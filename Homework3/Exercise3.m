% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing


% 3.a) Diagram of the filter
% r_x = 0,99
%
%                |
%          , - ~ ~ ~ - ,
%      , '       |       ' ,
%    ,           |           ,
%   ,            |            ,
%  ,             |             ,
%--,-------------O------------X,-----
%  ,             |             ,
%   ,            |            ,
%    ,           |           ,
%      ,         |        , '
%        ' - , _ | _ ,  '
%                |
%
%               b0
% H(z) =  --------------
%         1 - 0,99z^(-1)


% 3.b) Módulo y fase
%
%                       
%          _____________b0______________
% |H(w)| =    ,------------------------
%           `/ 1 + 0,99^2 - 1,98 cos(w) 
%
%                    /    0,99 sen(w)  \
% <H(w) = -tan^(-1) |  ---------------- |
%                    \  1 - 0,99cos(w) /


% 3.c) Normalizar
%
%                _____________b0______________
% |H(pi)| = 1 =    ,------------------------
%                `/ 1 + 0,99^2 - 1,98 cos(w) 
%
% b0 = 1,99


% 3.d) Ecuación de diferencias
%  
% y(n) = 1,99 * x(n) + 0,99 * y (n - 1)

% 3.e) x(n) = 2 cos ( (3 * pi * n)/2 - pi/4)
%
% y(n) = 3.98  * cos( (3 * pi * n)/2 - pi/4) + 0.99 * y (n - 1)
%

figure('name', 'Exercise #3 - Digital Signal Processing');

% Vector de resultados
limit = 1000;
result = zeros(1, limit);

result(1) = 13.98 * cos((3*pi*(0))/2 - pi/4);

for i = 2:limit
  result(i) = 3.98 * cos((3*pi*(i-1))/2 - pi/4) + 0.99 * result(i-1);
endfor

% Mostrar el resultado
a = 0:limit-1;
stem(a, result);
