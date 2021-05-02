# This file is the entrypoint
# Reads the STDIN or a file with the initial coordinates
# and the instructions to control the rovers

# Load classes
require 'byebug'
Dir[File.expand_path(".", __dir__) + "/src/**/*.rb"].each { |f| require(f) }

_grid =  ARGF.gets.strip

while !ARGF.eof do
  x, y, direction = ARGF.gets.strip.split(" ")
  position =  [x, y].map(&:to_i)
  direction = Directions::Parser.new(direction).call

  instructions = ARGF.gets.strip

  rover = Rover.new(direction, position)
  result = Explore.new(rover, instructions).call

  puts result
end
