% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Lets create a Window

figure('name', 'Exercise #1 - Digital Signal Processing');


% Define a function called grapher, this
% functions lets generate a graph of a
% signal in a discrete way.
% This function reveices a graph set up, as follow:
% ROWS : integer
% COLUMNS : integer
% POSITION : integer
% GRAPH TITLE : string
% X AXIS TITLE : string
% Y AXIS TITLE : string
% SIGNAL : vector
function graphDiscrete = grapherDiscrete(rows, columns, position, graph_title, x_axis, y_axis,signal)
    ws = subplot(rows,columns,position);
    stem(signal,"bx");
    grid(ws, 'on');
    title(graph_title);
    xlabel(x_axis);
    ylabel(y_axis);
end

% Lets generate a vector of numbers
% that will work as the signal.
x = [1 0 0 0 0 1];
h = [2/7 2/7 3/14 1/7 1/14 0];

ROWS = 3;
COLUMNS = 1;
x_axis_label = 'Sample N';

% Definition of the signal x(n)
graph_title = 'Source Signal: x(n) = {1,0,0,0,0,1}';
y_axis_label = 'x(n)';
grapherDiscrete(ROWS, COLUMNS, 1, graph_title, x_axis_label, y_axis_label, x);

% Definition of the impulse response h(n)
graph_title = 'Impulse Response: h(n) = {2/7,2/7,3/14,1/7,1/14,0}';
y_axis_label = 'h(n)';
grapherDiscrete(ROWS, COLUMNS, 2, graph_title, x_axis_label, y_axis_label, h);

% Lets go calculate the convolution of the two signals
y = conv(x,h) % The order does not matter, is commutative
graph_title = 'Convolution of x(n) and h(n): y(n)';
y_axis_label = 'y(n)';
grapherDiscrete(ROWS, COLUMNS, 3, graph_title, x_axis_label, y_axis_label, y);