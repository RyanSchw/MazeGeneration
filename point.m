classdef point
    properties
        row
        col
    end
    methods
        function [obj] = point(a, b)
            obj.row = a;
            obj.col = b;
        end
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