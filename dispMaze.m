function [] = dispMaze(maze)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	This function This function formats the matrix to be graphed via
%   heatmap. This is a two dimensional graph in which there are different
%   colors based on the value in the matrix. That way, the walls can be
%   grey, paths blue, and start/end orange.
%
% Function Call
%   function [] = dispMaze(maze)
%
% Input Arguments
%	1. maze: Current maze
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
% Color map
cmap = [1 1 1; .12 .39 1; 1 1 1; 1 .5 0; 1 .5 0; 1 1 1; 1 1 1; .65 .65 .65];

%% CALCULATIONS ---
% Create live imagery of map
hmo = imagesc(maze);
colormap(cmap);
set(gca, 'XColor', 'none');
set(gca, 'Ycolor', 'none');
drawnow

%% FORMATTED TEXT & FIGURE DISPLAYS ---


%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

