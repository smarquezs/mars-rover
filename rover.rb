class Rover
  attr_reader :direction, :position

  def initialize(direction, position = [0, 0])
    @direction = direction
    @position = position
  end

  def turn_right
    @direction = direction.turn_right
  end

  def turn_left
    @direction = direction.turn_left
  end

  def move
    @position = direction.move(position)
  end

  def to_s
    x, y = position
    "#{x} #{y} #{direction}"
  end
end
