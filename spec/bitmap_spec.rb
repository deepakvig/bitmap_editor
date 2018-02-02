require "spec_helper"
require_relative "../lib/bitmap.rb"
 
describe Bitmap do
  context "#initialize" do
    it "is initialized with a value by default" do
      bitmap = Bitmap.new 5, 5
      expect(bitmap.row).to eq 5
      expect(bitmap.col).to eq 5

      bitmap.grid.each do |row|
        expect(row.size).to eq 5
      end

      expect(bitmap.grid[0][0]).to eq "O"
    end
  end

  context "#set_color" do
    it "should set color for a pixel" do
      bitmap = Bitmap.new 5, 5
      bitmap.set_color(2,2,"W")

      expect(bitmap.grid[1][1]).to eq "W"
    end

    it "should raise argument error if pixel doesn't exist" do
      bitmap = Bitmap.new 1, 1
      expect { bitmap.set_color(2,2,"W") }.to raise_error(ArgumentError)
    end
  end

  context "#clear" do
    it "should clear the bitmap" do
      bitmap = Bitmap.new 5, 5
      bitmap.set_color(2,2,"W")
      bitmap.clear

      expect(bitmap.grid[1][1]).to eq "O"
    end
  end

  context "#display" do
    it "should display the bitmap" do
      bitmap = Bitmap.new 3, 3
      bitmap.set_color(2,2,"W")

      expect { bitmap.display }.to output("OOO\nOWO\nOOO\n\n").to_stdout   
    end
  end
end