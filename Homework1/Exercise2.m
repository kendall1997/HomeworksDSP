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
stem(n, y1);
title('sin(0.01 * pi * n)');

% Draw the secpnd function
figure;
stem(n, y2);
title('sin(0.02 * pi * n)');

% Draw the third function
figure;
stem(n, y3);
title('sin(0.05 * pi * n)');

% Draw the fourth function
figure;
stem(n, y4);
title('sin(0.1 * pi * n)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Draw the 4 functions in one window      %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
subplot(2,2,1); p1 = stem(n,y1); title('sin(0.01 * pi * n)');
subplot(2,2,2); p2 = stem(n,y2); title('sin(0.02 * pi * n)');
subplot(2,2,3); p3 = stem(n,y3); title('sin(0.05 * pi * n)');
subplot(2,2,4); p4 = stem(n,y4); title('sin(0.1 * pi * n)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% Draw the 4 functions overlaped          %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on;
stem(n,y1,"m");
stem(n,y2,"w");
stem(n,y3,"b");
stem(n,y4,"c");
%{
stem(n,y1,'Color', 'blue');
stem(n,y2,'Color', 'red');
stem(n,y3,'Color', 'green');
stem(n,y4,'Color', 'yellow');
%}
hold off;