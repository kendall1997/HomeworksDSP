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
figure('name', 'Exercise #8 - Digital Signal Processing');

% Core
% Lets set the domain
w = -pi:0.01:pi;
w_0 = pi/5;
f = -1*w_0;
T = 0.5;
L = 6;
P = (w-T)*L;
a = 0.0001;

real1 = 1 + f*cos(P);
imaginary1 = f*sin(P);
real2 = 1 - a*cos(P);
imaginary2 = a*sin(P);

magnitude1 = sqrt( pow2(real1,2) + pow2(imaginary1,2));
magnitude2 = sqrt( pow2(real2,2) + pow2(imaginary2,2));
magnitude = magnitude1./magnitude2;

phase = atan2(real1,imaginary1) - atan2(real2,imaginary2);


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