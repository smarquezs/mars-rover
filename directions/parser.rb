module Directions
  class Parser
    attr_reader :direction

    def initialize(direction)
      @direction = direction.upcase
    end

    def call
      {
        'N' => North.new,
        'S' => South.new,
        'E' => East.new,
        'W' => West.new,
      }[direction]
    end
  end
end
