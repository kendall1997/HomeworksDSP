1;
% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Define a function called grapher, this
% functions lets generate a graph of a
% signal
% This function reveices a graph set up, as follow:
% ROWS : integer
% COLUMNS : integer
% POSITION : integer
% GRAPH TITLE : string
% X AXIS TITLE : string
% Y AXIS TITLE : string
% SIGNAL : vector
function grapherContinuos = grapherContinuos(rows, columns, position, graph_title, x_axis, y_axis, domain, signal)
    ws = subplot(rows,columns,position);
    plot(domain, signal);
    grid(ws, 'on');
    title(graph_title);
    xlabel(x_axis);
    ylabel(y_axis);
end

% Windows Title
figure('name', 'Exercise #10 - Digital Signal Processing');

% Core
% Lets set the domain
domain = 0:0.1:2*pi;

% Final result
out = domain;

% Frequency
w_0 = 3*pi/7;

% Index of the result
n = 1;

%Algorithm
for index = domain
  first = 0;
  second = 0;
  third = 1/sin(w_0);
  if(n-1 < 1)
    first = 0;
  else
     first = 2*cos(w_0)*out(n-1);
  endif
  if(n-2 < 1)
    second = 0;
  else
    second = out(n-2);
  endif
  out(n) = first - second + third;
  n++;
endfor


% Graph
ROWS = 1;
COLUMNS = 1;
x_axis_label = 'w';

graph_title = 'Digital oscilator';
y_axis_label = '|H(w)|';
grapherContinuos(ROWS, COLUMNS, 1, graph_title, x_axis_label, y_axis_label,domain,out);
