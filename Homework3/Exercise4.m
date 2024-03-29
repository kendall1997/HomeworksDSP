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
figure('name', 'Exercise #4 - Digital Signal Processing');

% Core
% Lets set the domain
w = -pi:0.01:pi;

real = 0.5 + 0.25*cos(w) + 0.5*cos(2*w) + 0.25*cos(3*w);
imaginary = -0.25*sin(w) - 0.5*sin(2*w) - 0.25*sin(3*w);

magnitude = sqrt( pow2(real,2) + pow2(imaginary,2));
phase = atan2(real,imaginary);


% Graph
ROWS = 2;
COLUMNS = 1;
x_axis_label = 'w';

graph_title = 'Magnitude of the filter';
y_axis_label = '|H(w)|';
grapherContinuos(ROWS, COLUMNS, 1, graph_title, x_axis_label, y_axis_label,w,magnitude);

graph_title = 'Phase of the filter';
y_axis_label = '<H(w)';
grapherContinuos(ROWS, COLUMNS, 2, graph_title, x_axis_label, y_axis_label,w,phase);