classdef point
    properties
        x
        y
    end
    methods
        function [maze] = setMazePoint(maze, position, value)
            maze(position.x, position.y) = value;
        end
        function [positionNew] = adjust(position, a, b)
            positionNew = point(position.x + a, position.y + b);
    end
end