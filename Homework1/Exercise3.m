1;

% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% This function calculates the next frequency
% alias based on the function y(n) = pi*f*n
% The demostration is in the PDF attached.
function next = nextAlias(f0)
  next = f0 + 2;
end

% This function generates two windows
% The first one with a grid of 2 x 2
% with the next graphs:
%   Position 1 x 1 => Discrete y(n) with the frequency fiven (f0)
%   Position 1 x 2 => Discrete y(n) with the next alias frequency of f0
%   Position 2 x 1 => Continuos y(n) with the frequency fiven (f0)
%   Position 2 x 2 => Continuos y(n) with the next alias frequency of f0
% The other window with a superposition of the two discrete functions 
function graph = grapher(domain,firstFrequency)
  
  secondFrequency = nextAlias(firstFrequency);

  firstFunction = sin(pi*firstFrequency*domain);
  secondFunction = sin(pi*secondFrequency*domain);

  figure
  subplot(2,2,1)
  stem(domain,firstFunction)
  plotTitle = strcat('Discrete y(n) with f = ',num2str(firstFrequency))
  title(plotTitle)

  subplot(2,2,2)
  stem(domain,secondFunction)
  plotTitle = strcat('Discrete y(n) with f = ',num2str(secondFrequency))
  title(plotTitle)
  
  subplot(2,2,3)
  plot(domain,firstFunction)
  plotTitle = strcat('Continuos y(n) with f = ',num2str(firstFrequency))
  title(plotTitle)
  
  subplot(2,2,4)
  plot(domain,secondFunction)
  plotTitle = strcat('Continuos y(n) with f = ',num2str(secondFrequency))
  title(plotTitle)
  
  figure
  hold on
  
  stem(domain,firstFunction,"ro")
  stem(domain,secondFunction,"bx")
  plotTitle = strcat('Discrete y(n) with f = ',num2str(firstFrequency),' and f = ',num2str(secondFrequency))
  title(plotTitle)
  
  hold off
  
  
end

% Lets generate the domain
domain = 0:100;

% Set the frecuency
frequency = 0.4

% Lets go
grapher(domain,frequency)