module Directions
  class Base
    def turn_left
      raise NotImplementedError
    end

    def turn_right
      raise NotImplementedError
    end

    def move(current_position)
      raise NotImplementedError
    end

    def to_s
      raise NotImplementedError
    end
  end
end
