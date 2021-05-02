require 'byebug'

class Explore
  attr_reader :rover, :instructions

  def initialize(rover, instructions)
    @rover = rover
    @instructions = instructions
  end

  def call
    instructions.each_char do |instruction|
      rover.send(options[instruction])
    end

    rover.to_s
  end

  def options
    {
      "R" => :turn_right,
      "L" => :turn_left,
      "M" => :move,
    }
  end
end
