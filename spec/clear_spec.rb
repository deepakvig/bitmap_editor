require_relative '../lib/bitmap_commands/clear.rb'
require_relative '../lib/bitmap.rb'

describe Clear do
  context '#apply' do
    
    it 'should clear the bitmap' do
      bitmap = Bitmap.new 2,2
      bitmap.set_color(2,2,"W")

      expect(bitmap.grid[1][1]).to eq "W"

      expect(Clear.apply(bitmap, []).grid).to eq([["O","O"],["O","O"]])
    end
  end

  context "#valid?" do
    it 'returns false if nil bitmap is passed' do
      expect(Clear.valid?(nil, [])).to eq(false)
    end
  end
end