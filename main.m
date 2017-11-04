function [] = main()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	This function This is the main function of the maze generation program. This uses the setup function to create an
%   empty maze. Then, it uses the move function while there are no more nodes listed in the nodes list. At the very end,
%   it uses the adjustEnd function to link the exit to the rest of the maze.
%
% Function Call
%   function [] = main()
%
% Input Arguments
%	1. None
%
% Output Arguments
%	1. None
%
% Assignment Information
%	Assignment:         MATLAB Individual Project
%	Author:             Ryan Schwartz, schwar95@purdue.edu
%  	Team ID:            001-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION ---
% Grabs user input for size and difficulty
% Constraints for size: Positive number greater than 5
% Constraints for difficulty: 1 < d < 10
size = input("Enter size of maze: ");
difficulty = input("Enter of difficulty of maze: ");
while (size <= 5 || difficulty < 1 || difficulty > 10)
    size = input("Enter size of maze: ");
    difficulty = input("Enter of difficulty of maze: ");
end

%% CALCULATIONS ---
[maze, nodes, position, endPoint] = setup(size)
while numel(nodes) > 0
    [maze, position, nodes] = move(maze, position, nodes)
end
maze = adjustEnd(maze, endPoint);

%% FORMATTED TEXT & FIGURE DISPLAYS ---
disp maze;

%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

