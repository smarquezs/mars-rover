module Directions
  class East
    def turn_left
      North.new
    end

    def turn_right
      South.new
    end

    def move(current_position)
      x, y = current_position
      x += 1

      [x, y]
    end

    def to_s
      "E"
    end
  end
end
