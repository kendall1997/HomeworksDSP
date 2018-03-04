1;

% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Algorithm explained in PDF attached
function create = play(f,t)
  bitrate = 44100
  
  domain = 0:bitrate*t;
  
  frequency = f/bitrate;
  
  y = sin(2*pi*frequency*domain);
  
  sound(y,bitrate)  
  
end

play(14000,1)