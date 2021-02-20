X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
y = [2 ; 5 ; 5 ; 6];
[theta J_hist] = gradientDescentMulti(X, y, zeros(3,1), 0.01, 10);

% results

% >> theta
% theta =

%    0.25175
%    0.53779
%    0.32282

% >> J_hist
% J_hist =

%    2.829855
%    0.825963
%    0.309163
%    0.150847
%    0.087853
%    0.055720
%    0.036678
%    0.024617
%    0.016782
%    0.011646