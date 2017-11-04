# MazeGeneration
MATLAB Assignment for ENGR 133. Generates a maze of variable size and difficulty. Depth-first search idea found from [wikipedia](https://en.wikipedia.org/wiki/Maze_generation_algorithm).

#### Program Function
This program uses a randomized version of the depth-first search algorithm to generate a maze of size *n* and difficulty *d*. The `main` function controls the rest of this program, so this is the only function that needs to be called in order to generate a maze. Descriptions of the created functions are listed below.

#### Instructions
To use this program, simply navigate to the directory that holds all files listed below. Open `main.m` and press *run*. The program will ask for user input for the *size* and *difficulty* of the maze. The *size* input can be any number larger than 5. The *difficulty* must be 1 - 10.

#### Maze Definitions
Num | Item
--- | ---
0 | Wall
1 | Path
2 | Start
3 | End
(4) | Down (\'\\\')
(5) | Up (\'/\')
8 | Border

---

#### Project Requirements
A reference to where each requirement can be found in the list below:
1. User input: `main` function lines x - x
2. Functions: One `main` function with five subfunctions, `setup`, `move`, `validateMove`, `adjustEnd`, `checkNodes`
3. For loop: 
4. While loop:
5. Embedded loops:
6. Matrix:
7. Conditional structure: 
8. 100 lines of code: 

---

### Function List
#### main.m
Inputs: *None* \
Outputs: *None* (Note: displays maze with disp function) \
This is the main function of the maze generation program. This uses the `setup` function to create an empty maze. Then, it uses the `move` function while there are no more nodes listed in the `nodes` list. At the very end, it uses the `adjustEnd` function to link the exit to the rest of the maze.
#### setup.m
Inputs: *size* \
Outputs: *maze, nodes, startPos, endPos* \
This function takes a size parameter and generates a *n*x*n* matrix of that size. Next, the function creates a border of 8's around the outside edges. It then randomly generates a start and end point (which will be returned at the end of the function). The start point will be located at some point along the bottom row (where it will replace one of the 8's). The end point will be located at some point along the top row (where it will replace one of the 8's). A 1 (path) will be generated directly above the start point, and a node will be created at that point. The function then returns the created maze, a list of **nodes**, and the start/end positions of the maze.
#### move.m
Inputs: *maze, position* \
Outputs: *maze, position, nodes* \
This function takes a maze and generates one new point along its current path. This function is recursively called within the main function until there are zero nodes. This function first calls `validateMove` to get a list of possible directions the function can go. If there are 0 possible directions and the current position is a node, the node is removed and the current position is set to the last node on the list. If there are 0 possible directions and the current position is *not* a node, the current position is set to the last node on the list. If there are 1, 2, 3, or 4 possible directions, the function does a couple of things. It first finds a random direction using the weighting described in the [movement](https://github.com/RyanSchw/MazeGeneration#movement) section of this README. It then finds the position of the previous position (whatever point was created just before this one). It then calls the `checkNodes` function. If it returns `true`, then add the current point to the `node` list. Regardless, the `currentPoint` is set equal to the `futurePoint` and that point in the maze is set to 1. *maze*, *pos*, and *nodes* are all returned in order to make this function easy to be called recursively.
#### validateMove.m
Inputs: *maze, position* \
Outputs: *position* \
The purpose of this function is to tell the `move` function where the current position could possibly go. This function will return a matrix called `directions` that will return either a `1` or a `0` for each direction. The format for `directions`	 is `up, down, left, right`. Valid movements are checked using a *valid movement matrix* outlined below.
#### adjustEnd.m
Inputs: *maze, endPos* \
Outputs: *maze* \
This function connects the end piece to the rest of the maze. Because the movement constraints are set to not directly touch the border (8's), a connection must be made to the generated maze. This is done by traversing straight down from the end position until a connection has been made to the rest of the maze. This is indicated by looking left, right, and down to see if there is a 1 next to it. This outputs the adjusted maze at the end of this function.
#### checkNode.m
*Credit to Bailey Keel for helping me come up with this idea.* \
Inputs: *futurePoint, previousPoint* \
Outputs: *result* \
This function checks to see if the movement would result in the creation of a node. Most simply, a node is created when there is a change in the direction of a path. In all cases, the generated point (`futurePoint`) will be in a different row and column than the last point (`previousPoint`, **not** `currentPoint`). If a node is found, returns `true`.

---
### Movement
##### Weighing Movement Directions
##### Valid Movement Matrix
