require "spec_helper"

module Mastermind
  describe Player do
    context "#initialize" do

      it "raises an exception when initialized with {}" do
        expect { Player.new({}) }.to raise_error
      end

      it "does not raise and error when initialized with a valid hash" do
        input = { name: "Anthony" }
        expect { Player.new(input) }.to_not raise_error
      end

    end
  end
end
