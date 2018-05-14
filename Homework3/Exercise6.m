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
order = 12;

%real = [];
%imaginary = [];

%real
%for w_0 = w
%  tmp = 1;
%  for o = 2:1:order
%    tmp= tmp + cos(o*w_0);
%  endfor
%  real = [real, tmp];
%endfor

%imaginary
%for w_0 = w
%  tmp = 0;
%  for o = 2:1:order
%    tmp= tmp - sin(o*w_0);
%  endfor
%  imaginary = [imaginary, tmp];
%endfor

real = 1 + cos(w) + cos(2*w) + cos(3*w) + cos(4*w) + cos(5*w) + cos(6*w) + cos(7*w) + cos(8*w) + cos(9*w) + cos(10*w) + cos(11*w) + cos(12*w);
imaginary = -1*sin(w) - sin(2*w) - sin(3*w) - sin(4*w) - sin(5*w) - sin(6*w) - sin(7*w) - sin(8*w) - sin(9*w) - sin(10*w) - sin(11*w) - sin(12*w);

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