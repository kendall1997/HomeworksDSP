% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Lets create a Window

figure('name', 'Exercise #3 - Digital Signal Processing');

% Define a function that calculates the convolution
% of a signal and a impulse response.
function convolution = my_conv(x, h)
  X = [x,zeros(1,length(h))]; 
  H = [h,zeros(1,length(x))];

  for i=1:length(h)+length(x)-1 
    O(i) = 0; 
    for j=1:length(x) 
      if(i-j+1>0) 
        O(i) = O(i) + X(j) * H(i-j+1); 
      else
        1;
      end
    end
  end
  
  convolution = O;

end

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

ROWS = 4;
COLUMNS = 1;
x_axis_label = 'n';

% Definition of the signal x(n)
graph_title = 'Source Signal: x(n) = {1,0,0,0,0,1}';
y_axis_label = 'x(n)';
grapherDiscrete(ROWS, COLUMNS, 1, graph_title, x_axis_label, y_axis_label, x);

% Definition of the impulse response h(n)
graph_title = 'Impulse Response: h(n) = {2/7,2/7,3/14,1/7,1/14,0}';
y_axis_label = 'h(n)';
grapherDiscrete(ROWS, COLUMNS, 2, graph_title, x_axis_label, y_axis_label, h);

% Lets go calculate the convolution of the two signals
y_0 = conv(x,h) % The order does not matter, is commutative
graph_title = 'Convolution with Matlab/Octave conv function';
y_axis_label = 'y(n)';
grapherDiscrete(ROWS, COLUMNS, 3, graph_title, x_axis_label, y_axis_label, y_0);

% Lets go calculate the convolution of the two signals
y_1 = my_conv(x,h) % The order does not matter, is commutative
graph_title = 'Convolution with manual conv function';
y_axis_label = 'y(n)';
grapherDiscrete(ROWS, COLUMNS, 4, graph_title, x_axis_label, y_axis_label, y_1);