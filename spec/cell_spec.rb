require "spec_helper"

module Mastermind
  describe Cell do

    context "#initialize" do
      it "is initialized with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end

      it "can be initialized with a value of 'Green'" do
        cell = Cell.new("Green")
        expect(cell.value).to eq "Green"
      end
    end

  end
end
