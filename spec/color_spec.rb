require_relative '../lib/bitmap_commands/color.rb'
require_relative '../lib/bitmap.rb'

describe Color do
  before do
    @bitmap = Bitmap.new 3, 3
  end

  context '#apply' do
    
    it 'should set color to the bitmap pixel' do
      
      expect(Color.apply(@bitmap, [2,2,"W"]).grid).to eq([["O","O","O"],["O","W","O"],["O","O","O"]])
    end
  end

  context "#valid?" do
    it 'returns false if nil bitmap is passed' do
      expect(Color.valid?(nil, [])).to eq(false)
    end

    it 'returns false if outofbound cordinates are passed' do
      expect(Color.valid?(@bitmap, [10,10,"W"])).to eq(false)
    end

    it 'returns true if valid cordinates are passed' do
      expect(Color.valid?(@bitmap, [1,1,"W"])).to eq(true)
    end
  end
end