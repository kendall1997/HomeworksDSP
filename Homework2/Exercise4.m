% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Lets create a Window

figure('name', 'Exercise #4 - Digital Signal Processing');

% Define a function to generate the y(n)
function result=y(a_k, b_k, x, N, condi)
  % If the initial conditions are not given
  if nargin < 5
    condi = zeros(1, length(a_k) + 1);
  endif
  
  % Create the result vector
  result = zeros(1, N);
  
  % Iterate N times
  n = 1:N;
  for i = 1:(N)
    % Compute the input [b_k * x(n - k)]
    for k = 1:length(b_k)
      result(i) += (b_k(k) * x(i-k));
    endfor
    
    % Compute the output [a_k * y(n - k)]
    for k = 2:length(a_k)
      index = i-k;
      if(index >= 0)
        result(i) -= (a_k(k) * result(index + 1));
      else
        result(i) -= (a_k(k) * condi(k-i));
      endif
    endfor
    
    result(i) /= a_k(1);
  endfor
  
  % Plot and print the result
  a = 0:N-1;
  stem(a, result);
  disp(result);
endfunction


% Example with function x_funcion
a = [1, -3, -4];
b = [1, -2];
z = [1, 2, 3, 4];


y(a,b,@x_funcion ,5);