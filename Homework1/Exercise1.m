% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% All the plots are generated in a same window
hold on;

% Define a function called grapher, this
% functions lets generate a graph of a
% function f(x) = sin(x) in a continuos
% way.
% This function reveices a vector with finite
% values of the domain.
function graph = grapher(d)
  plot(sin(d),"k");
end

% Define a function called grapher, this
% functions lets generate a graph of a
% function f(x) = sin(x) in a discrete
% way.
% This function reveices a vector with finite
% values of the domain.
function graphDiscrete = grapherDiscrete(d)
  stem(sin(d),"r");
end

% Lets generate a vector of numbers
% that will work as a domain.
% From 0 to 10 with steps of 0.5
domain = 0:0.5:10*pi;

% Lets call the functions
grapher(domain);
grapherDiscrete(domain);

% Release the hold on instruction
hold off;