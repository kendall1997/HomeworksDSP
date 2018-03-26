1;
% Tecnologico de Costa Rica
% Escuela de Ingenieria Electronica
% El-5805 Procesamiento Digital de Señales

% This Octave File solves the
% problems given for the Course
% Digital Signal Processing

% Lets create a Window

figure('name', 'Exercise #5 - Digital Signal Processing');

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
function graphDiscrete = grapherDiscrete(rows, columns, position, graph_title, x_axis, y_axis,signal, decoration)
    ws = subplot(rows,columns,position);
    stem(signal,decoration);
    grid(ws, 'on');
    title(graph_title);
    xlabel(x_axis);
    ylabel(y_axis);
end

% This sub system will return the result
% of the convolution of the input
% and the impulse response called as h
function returned = SubSystem1(data)
  h = [1 1/2 1/4 1/8 1/16 1/32];
  returned = conv(data,h);
end

% This sub system will return the result
% of the convolution of the input
% and the impulse response called as h
function returned = SubSystem2(data)
  h = [1 1 1 1 1];
  returned = conv(data,h);
end

% This sub system will return the result
% of 1/4 x(n) + 1/2x(n − 1) + 1/4 x(n − 2)
function returned = SubSystem3(data)
  size = length(data);
  output = zeros(1, size);
  
  for index = 1 : size
    x_0 = data(index);
    x_1 = 0;
    x_2 = 0;
    if ((index - 1) >= 1)
      x_1 = data(index-1);
    else
      1;
    end
    if ((index - 2) >= 1)
      x_2 = data(index-2);
    else
      1;
    end
    output(index) = (1/4)*x_0 + (1/2)*x_1 + (1/4)*x_2;      
  end
  
  returned = output;  
end

% This sub system will return the result
% of 0.9y(n − 1) − 0.81y(n − 2) + v(n) + v(n − 1)
function returned = SubSystem4(data)
  size = length(data);
  output = zeros(1, size);
  
  for index = 1 : size
    y_1 = 0;
    y_2 = 0;
    v_0 = data(index);
    v_1 = 0;        
    
    if ((index - 1) >= 1) % Calculates y_1
      y_1 = output(index);
    else
      1;
    end
    if ((index - 2) >= 1) % Calculates y_2
      y_2 = output(index);
    else
      1;
    end
    if ((index - 1) >= 1) % Calculates v_1
      v_1 = data(index);
    else
      1;
    end
    
    output(index) = (0.9*y_1) - (0.81*y_2) + v_0 + v_1;
    
  end
  
  returned = output;  
end

% This function will complete with 0's
% the shortest signal
function [returned1,returned2]  = Normalize(signal1, signal2)
  size1 = length(signal1);
  size2 = length(signal2);
  
  if (size1 > size2)
    returned1 = signal1;
    returned2 = [signal2, zeros(1,size1 - size2)];
  elseif (size1 < size2)
    returned2 = signal2;
    returned1 = [signal1, zeros(1,size2 - size1)];
  else
    returned1 = signal1;
    returned2 = signal2;
  end

end


% This function will call the
% other sub systems and will return
% the main output
function returned = System(data)
  SIZE = 100;
  
  T1 = SubSystem1(data);
  [T2 T3] = Normalize(SubSystem2(T1),SubSystem3(data));
  V = T2 + T3;
  T4 = SubSystem4(V);
  
  if (length(T4) <= SIZE)
    T4 = [T4, zeros(1, SIZE-length(T4))];
  else
    T4 = T4(1:SIZE);
  end  
  
  returned = T4;
  
end


% Lets generate a vector of numbers
% that will work as the signal.
signal = [1];
output = System(signal);

ROWS = 2;
COLUMNS = 1;

graph_title = 'Source Signal of the system';
x_axis_label = 'N';
y_axis_label = 'x(n)';
grapherDiscrete(ROWS, COLUMNS, 1, graph_title, x_axis_label, y_axis_label, signal, "b^");

graph_title = 'Response of the system';
x_axis_label = 'N';
y_axis_label = 'y(n)';
grapherDiscrete(ROWS, COLUMNS, 2, graph_title, x_axis_label, y_axis_label, output, "b.");
