module Directions
  class South < Base
    def turn_left
      East.new
    end

    def turn_right
      West.new
    end

    def move(current_position)
      x, y = current_position
      y -= 1

      [x, y]
    end

    def to_s
      "S"
    end
  end
end
