function [positions] = validateMove(maze, position)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	This function telsl the move function where the current position could
%   possibly go. This function will return a matrix called directions that
%   will return either a 1 or a 0 for each direction. The format for
%   directions is up, down, left, right. Valid movements are checked using
%   a valid movement matrix outlined on GitHub.
%
% Function Call
%   function [positions] = validateMove(maze, position)
%
% Input Arguments
%	1. maze: Current maze
%   2. position: Current position
%
% Output Arguments
%	1. positions: Matrix that shows what available directions can be used.
%	Formatted in [up down left right], where 1's are viable movements.
%
% Assignment Information
%	Assignment:         MATLAB Individual Project
%	Author:             Ryan Schwartz, schwar95@purdue.edu
%  	Team ID:            001-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION ---
positions = [1 1 1 1]; % Up, down, left, right
[numrow, numcol] = size(maze);

%% CALCULATIONS ---
% Check up
if position.row == 2
    positions(1) = 0;
elseif position.row == 3
    for z = [-1 0 1]
        if mazeValue(maze, position, -1, z) == 1
            positions(1) = 0;
        end
    end
else
    for k = [-2 -1]
        for z = [-1 0 1]
            if mazeValue(maze, position, k, z) == 1
                positions(1) = 0;
            end
        end
    end
end

% Check down
if position.row == numrow - 1
    positions(2) = 0;
elseif position.row == numrow - 2
    for z = [-1 0 1]
        if mazeValue(maze, position, 1, z) == 1
            positions(2) = 0;
        end
    end
else
    for k = [1 2]
        for z = [-1 0 1]
            if mazeValue(maze, position, k, z) == 1
                positions(2) = 0;
            end
        end
    end
end

% Check left
if position.col == 2
    positions(3) = 0;
elseif position.col == 3
    for z = [-1 0 1]
        if mazeValue(maze, position, z, -1) ==1
            positions(3) = 0;
        end
    end
else
    for k = [-1 0 1]
        for z = [-2 -1]
            if mazeValue(maze, position, k, z) == 1
                positions(3) = 0;
            end
        end
    end
end

% Check right
if position.col == numcol - 1
    positions(4) = 0;
elseif position.col == numcol - 2
    for z = [-1 0 1]
        if mazeValue(maze, position, z, 1) == 1
            positions(4) = 0;
        end
    end
else
    for k = [-1 0 1]
        for z = [1 2]
            if mazeValue(maze, position, k, z) == 1
                positions(4) = 0;
            end
        end
    end
end

%% FORMATTED TEXT & FIGURE DISPLAYS ---

%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

