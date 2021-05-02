# frozen_string_literal: true

module Validations
  class Coordinates
    VALID_DIRECTIONS = %w[N S E W]

    attr_reader :grid, :x, :y, :direction

    def initialize(grid, x, y, direction)
      @grid = grid
      @x = x
      @y = y
      @direction = direction
    end

    def valid?
      coordinates_in_range? && valid_direction?
    end

    # private

    def coordinates_in_range?
      x.between?(0, grid.x_max) && y.between?(0, grid.y_max)
    end

    def valid_direction?
      VALID_DIRECTIONS.include?(direction)
    end
  end
end
