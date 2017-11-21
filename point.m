classdef point
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description
%	The purpose of this class is to prevent the need for x and y components
%   for all points throughout the maze. These functions are mostly one
%   liners whos purpose is to make adjustments to the maze and positions
%   simpler.
%
% Assignment Information
%	Assignment:         MATLAB Individual Project
%	Author:             Ryan Schwartz, schwar95@purdue.edu
%  	Team ID:            001-07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    properties
        row
        col
    end
    methods
        % Constructor
        function [obj] = point(a, b)
            obj.row = a;
            obj.col = b;
        end

        % Functions
        function [maze] = setMazePosition(maze, position, value)
            maze(position.row, position.col) = value;
        end
        function [positionNew] = adjust(position, row1, col1)
            positionNew = point(position.row + row1, position.col + col1);
        end
        function [val] = mazeValue(maze, position, a, b)
            val = maze(position.row + a, position.col + b);
        end
        function t = same(a, nodes)
            if a.row == nodes(1, end) && a.col == nodes(2, end)
                t = 1;
            else
                t = 0;
            end
        end
    end
end