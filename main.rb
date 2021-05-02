# This file is the entrypoint
# Reads the STDIN or a file with the initial coordinates
# and the instructions to control the rovers

# Load classes
require 'byebug'
Dir[File.expand_path(".", __dir__) + "/src/**/*.rb"].each { |f| require(f) }

x_max, y_max =  ARGF.gets.strip.split
x_max, y_max = x_max.to_i, y_max.to_i

grid = MarsGrid.new(x_max, y_max)

while !ARGF.eof do
  begin
    x, y, direction = ARGF.gets.strip.split
    x, y = x.to_i, y.to_i

    raise unless Validations::Coordinates.new(grid, x, y, direction).valid?

    position =  [x, y]
    direction = Directions::Parser.new(direction).call
  rescue StandardError
    puts "You have entered wrong coordinates, please enter the coordinates again, " \
      "x position must be between 0 and #{x_max}, y position must be between 0 and #{y_max} " \
      "and allowed directions are #{Validations::Coordinates::VALID_DIRECTIONS}"
    retry
  end

  begin
    instructions = ARGF.gets.strip
    raise unless Validations::Instructions.new(instructions).valid?
  rescue StandardError
    puts "You have entered wrong instructions, please, enter the instructions again, " \
      "allowed movements are #{Validations::Instructions::ALLOWED_MOVEMENTS}"
    retry
  end

  rover = Rover.new(direction, position)
  result = Explore.new(rover, instructions).call

  puts result
end
