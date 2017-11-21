function [result] = checkNode(fPosition, pPosition)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	This function This function checks to see if the movement would result
%   in the creation of a node. Most simply, a node is created when there is
%   a change in the direction of a path. In all cases, the generated point
%   (futurePoint) will be in a different row and column than the last point
%   (previousPoint, not currentPoint). If a node is found, returns true.
%
% Function Call
%   function [result] = checkNode(fPosition, pPosition)
%
% Input Arguments
%	1. fPosition: Future position the maze is thinking about going to
%   2. pPosition: Previous position the maze was just at
%
% Output Arguments
%	1. result: 1 or 0 based on if there is a node or not (changed both row
%	and column)
%
% Assignment Information
%	Assignment:         MATLAB Individual Project
%	Author:             Ryan Schwartz, schwar95@purdue.edu
%  	Team ID:            001-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION ---


%% CALCULATIONS ---
% If a right angle is formed, then it is a node
if fPosition.row ~= pPosition.row && fPosition.col ~= pPosition.col
    result = 1;
else
    result = 0;
end

%% FORMATTED TEXT & FIGURE DISPLAYS ---


%% COMMAND WINDOW OUTPUTS ---


%% ACADEMIC INTEGRITY STATEMENT ---
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.
%

