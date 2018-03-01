%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Graphic a signal and the samples taken. %
% The function receives two parameters:   %
%  - freq: function frequency             %
%  - s: sample rate                       %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
1;

function show(freq,s)
    endNumber = 4*pi/freq; % endNumber to show two periods
    
    % Create the sin graphic 
    x1 = endNumber / 200;
    n1 = 0:x1:endNumber;
    y1 = sin(n1*freq);
    
    % Create the samples
    x2 = endNumber/(2*s);
    n2 = 0:x2:endNumber;
    y2 = sin(n2*freq);
    
    % Plot the function and stem the samples 
    figure;
    hold on;
    plot(n1, y1);
    stem(n2, y2);
    hold off;
endfunction

% Examples
show(0.5,2);
show(1,4);
show(2,8);
show(10,5);
show(30,10);