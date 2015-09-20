require "spec_helper"

module Mastermind
  describe Board do

    context "#initialize" do

      it "initializes the board with a grid" do
        expect { Board.new(grid: "grid") }.to_not raise_error
      end

      it "sets the board with twelve rows by default" do
        board = Board.new
        expect(board.grid.count).to eq(12)
      end

      it "creates four things in each row by default" do
        board = Board.new
        board.grid.each do |row|
          expect(row.count).to eq(4)
        end
      end

    end

    context "#grid" do
      it "returns the grid" do
        board = Board.new(grid: "something to return")
        expect(board.grid).to eq "something to return"
      end
    end

    context "#grid_cell" do
      it "returns the cell based on the (x, y) coordinate system" do
        grid = [["", "color"], ["", ""]]
        board = Board.new(grid: grid)
        expect(board.get_cell(1, 0)).to eq "color"
      end
    end

    context "#set_cell" do
      it "updates the value of the cell object at a (x, y) coordinate" do
        Val = Struct.new(:value)
        grid = [[Val.new(""), ""], ["", ""]]
        board = Board.new(grid: grid)
        board.set_cell(0, 0, "blue")
        expect(board.get_cell(0, 0).value).to eq "blue"
      end
    end

  end
end
