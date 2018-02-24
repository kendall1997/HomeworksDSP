%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Draw 4 functions in 3 different ways:   %
%  - One window every function            %
%  - All functions in one window          %
%  - Overlap all four functions           %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define the value 'n' from 0 to 100
n = 0:100;

% Define the 4 frequencies
f1 = 0.01;
f2 = 0.02;
f3 = 0.05;
f4 = 0.1;

% Define the 4 functions
y1 = sin(n*pi*f1);
y2 = sin(n*pi*f2);
y3 = sin(n*pi*f3);
y4 = sin(n*pi*f4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Draw each function in a separate window %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Draw the first function
figure;
plot(n, y1);
title('sin(0.01 * pi * n)');

% Draw the secpnd function
figure;
plot(n, y2);
title('sin(0.02 * pi * n)');

% Draw the third function
figure;
plot(n, y3);
title('sin(0.05 * pi * n)');

% Draw the fourth function
figure;
plot(n, y4);
title('sin(0.1 * pi * n)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Draw the 4 functions in one window      %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
subplot(2,2,1); p1 = plot(n,y1); title('sin(0.01 * pi * n)');
subplot(2,2,2); p2 = plot(n,y2); title('sin(0.02 * pi * n)');
subplot(2,2,3); p3 = plot(n,y3); title('sin(0.05 * pi * n)');
subplot(2,2,4); p4 = plot(n,y4); title('sin(0.1 * pi * n)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Draw the 4 functions overlaped          %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on;
plot(n,y1,"m");
plot(n,y2,"w");
plot(n,y3,"b");
plot(n,y4,"c");
%{
plot(n,y1,'Color', 'blue');
plot(n,y2,'Color', 'red');
plot(n,y3,'Color', 'green');
plot(n,y4,'Color', 'yellow');
%}
hold off;