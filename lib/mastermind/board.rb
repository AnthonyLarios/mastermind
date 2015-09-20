module Mastermind
  class Board
    attr_reader :grid
    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    def get_cell(x, y)
      grid[y][x]
    end

    def set_cell(x, y, value)
      get_cell(x, y).value = value
    end

    private

    def default_grid
      Array.new(12) { Array.new(4) { Cell.new } }
    end
  end
end
