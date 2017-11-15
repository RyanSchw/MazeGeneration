function [maze] = adjustEnd(maze, endPosition)
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
% Set position below end point to be a 1 (start the connection process)
position = point(endPosition.row + 1, endPosition.col);
maze = setMazePosition(maze, position, 1);
connection = 0;
while connection == 0
    % Search if there are any 1's in down, left, right positions
    if mazeValue(maze, position, 1, 0) == 1
        connection = 1;
    elseif mazeValue(maze, position, 0, -1) == 1
        connection = 1;
    elseif mazeValue(maze, position, 0, 1) == 1
        connection = 1;
    else
        % If there are no surrounding 1's, move down
        position = adjust(position, 1, 0);
        maze = setMazePosition(maze, position, 1);
    end
end

%% CALCULATIONS ---


%% FORMATTED TEXT & FIGURE DISPLAYS ---


%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

