# frozen_string_literal: true

module Validations
  class Instructions
    ALLOWED_MOVEMENTS = %w[L R M]

    attr_reader :instructions

    def initialize(instructions)
      @instructions = instructions
    end

    def valid?
      instructions.split("").all? { |m| ALLOWED_MOVEMENTS.include?(m) }
    end
  end
end
