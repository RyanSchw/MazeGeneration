%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	This script is the main controller of the maze generation program.
%   This uses the setup function to create an empty maze. Then, it uses the
%   move function while there are no more nodes listed in the nodes list.
%   At the very end, it uses the adjustEnd function to link the exit to the
%   rest of the maze.
%
% Assignment Information
%	Assignment:         MATLAB Individual Project
%	Author:             Ryan Schwartz, schwar95@purdue.edu
%  	Team ID:            001-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION ---
% Grabs user input for size and difficulty
% Constraints for size: Positive number 5 < s < 100
% Constraints for difficulty: 1 < d < 10
res = inputdlg({'Enter size of maze:', 'Enter difficulty of maze:'}, 'Input', 1);
size = str2num(res{1});
difficulty = str2num(res{2});
% Verify numbers are correct
while size > 100 || size <= 5 || difficulty < 1 || difficulty > 10
    res = inputdlg({'Enter size of maze:', 'Enter difficulty of maze:'}, 'Incorrect Input', 1);
    size = str2num(res{1});
    difficulty = str2num(res{2});
end

%% CALCULATIONS ---
[maze, nodes, position, endPoint] = setup(size);
% Runs generation process until there are no more nodes left
while numel(nodes) > 0
    [maze, position, nodes] = move(maze, position, nodes, difficulty);
    dispMaze(maze);
end
maze = adjustEnd(maze, endPoint);

%% FORMATTED TEXT & FIGURE DISPLAYS ---
dispMaze(maze);
fprintf('Completed successfully\n');
clear

%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

