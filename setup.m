function [maze, nodes, position, endPos] = setup(size)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	This function ...
%
% Function Call
%
%
% Input Arguments
%	1.
%
% Output Arguments
%	1.
%
% Assignment Information
%	Assignment:         MATLAB Individual Project
%	Author:             Ryan Schwartz, schwar95@purdue.edu
%  	Team ID:            001-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION ---
maze = zeros(size);
maze(1, 1:end) = 8;
maze(1:end, 1) = 8;
maze(end, 1:end) = 8;
maze(1:end, end) = 8;

%% CALCULATIONS ---
position = point(random(numel(size) - 2) + 1, numel(size));
maze = setMazePoint(maze, position, 3);
position = adjust(position, 1, 0);
nodes = [position];

endPos = point(random(numel(size) - 2) + 1, 1);


%% FORMATTED TEXT & FIGURE DISPLAYS ---


%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

