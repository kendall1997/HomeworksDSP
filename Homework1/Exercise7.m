1;

% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Algorithm explained in PDF attached

% This is the main function, from this methods
% the other ones are called
function main(signal)
  [vectorLengthRows vectorLengthColumns] = size(signal);
  
  preDomain = 0:vectorLengthColumns-1;
  curve = normalize(signal);
  [domain invertedCurve] = invertDiscrete(preDomain,signal);
  
  even = calculateEven(curve, invertedCurve);
  odd = calculateOdd(curve, invertedCurve);
  
  grapher(domain,even,odd,preDomain,signal);
  
end

% This method add zeros in front of the signal 'y'
% The amount of zeros added is N - 1, where N is
% the amount of elements in the vector 'y'.
function curve = normalize(y)
  [vectorLengthRows vectorLengthColumns] = size(y);
  curve = curve = [zeros(1,vectorLengthColumns-1),y];
end

% This method add zeros next to the signal 'y'
% after it has been inverted respect the element 0
% The amount of zeros added is N - 1, where N is
% the amount of elements in the vector 'y'.
% Then, a domain is generated with the negative 'x' values
% after inversion.
function [invertedDomain, invertedCurve] = invertDiscrete(x,y)
  [vectorLengthRows vectorLengthColumns] = size(y);
  curve = [fliplr(y),zeros(1,vectorLengthColumns-1)];
  invertedCurve = curve;
  invertedDomain = -1 * (vectorLengthColumns - 1) : 1 : vectorLengthColumns - 1;
  return  
end

% This method calcules the even component
function even = calculateEven(signal, invertedSignal)
  even = (1/2) * (signal + invertedSignal);
end

% This method calcules the odd component
function odd = calculateOdd(signal, invertedSignal)
  odd = (1/2) * (signal - invertedSignal);
end

% This method takes the signal, components and domain and
% generates a graph
function graph = grapher(domain, even, odd, predomain, presignal)
  figure;
  subplot(2,2,1);
  stem(predomain,presignal);
  grid on
  title('Original Signal');
  subplot(2,2,2);
  stem(domain,even + odd);
  grid on
  title('Sum of even and odd components');
  subplot(2,2,3);
  stem(domain,even);
  grid on
  title('Even component of the signal');
  subplot(2,2,4);
  stem(domain,odd);
  grid on
  title('Odd component of the signal');
  
end

% This is the signal
signal = [0 1 2];

% Call the main function
main(signal);

