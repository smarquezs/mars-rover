module Directions
  class North < Base
    def turn_left
      West.new
    end

    def turn_right
      East.new
    end

    def move(current_position)
      x, y = current_position
      y += 1

      [x, y]
    end

    def to_s
      "N"
    end
  end
end
