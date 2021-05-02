module Directions
  class West < Base
    def turn_left
      South.new
    end

    def turn_right
      North.new
    end

    def move(current_position)
      x, y = current_position
      x -= 1

      [x, y]
    end

    def to_s
      "W"
    end
  end
end
