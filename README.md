# Mars Rovers
This repository includes a solution written in Ruby, to solve the mars rover problem described below.

## Ruby Version
The ruby version is `2.7.3` installed using [rbenv](https://github.com/rbenv/rbenv)

## Test suite
We are using [rspec](https://rspec.info/) as testing tool, which is included in the `Gemfile`, so, to run the test suite, just execute the commands below

```bash
bundle install
rspec spec
```

## Execute the code
This repository includes a file with the input to test the code, so, you just run in a terminal the following command.


```bash
ruby operator.rb input.txt
```

## Design
All the backend logic is located inside the `src` folder. this folder includes the following classes.

`Rover` This class represents the rover deployed in the mars platau, and includes the actions to explore it.

`Explore` This class is responsible for receiving the instructions from the operator and operate the rovers.

`MarsGrid` This class respresents the Mars plateau grid and is used to perform some validations when a rover is deployed.

`Directions` There are one class for each cardinal point and hold the logic to move the rovers, the rovers delegate their movements
to a specific class depending their direction.

`Validations` There are 2 classes to valid operator imputs, `Instructions` to make sure the operator enter only valid movements and `Coordinates` to avoid
operators placing rovers in a wrong initial poisition.

## Mars Rovers Problem
A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position and location is represented by a combination of x and y coordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

## Input
The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.

The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y coordinates and the rover's orientation.

Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

## Output
The output for each rover should be its final coordinates and heading.

## Input and Output
### Test Input:

```bash
5 5
1 2 N
LMLMLMLMM
3 3 E
```

### Expected Output:

```bash
1 3 N
5 1 E
```
