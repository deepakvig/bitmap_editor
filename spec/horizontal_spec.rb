require_relative '../lib/bitmap_commands/horizontal.rb'
require_relative '../lib/bitmap.rb'

describe Horizontal do
  before do
    @bitmap = Bitmap.new 3, 3
  end

  context '#apply' do
    
    it 'should create a bitmap' do
      expect(Horizontal.apply(@bitmap, [2,3,2,"G"]).grid).to eq([["O", "O", "O"], ["O", "G", "G"], ["O", "O", "O"]])
    end
  end

  context "#valid?" do
    it 'returns false if wrong arguments are passed' do
      expect(Horizontal.valid?(@bitmap, [5,"6","W"])).to eq(false)
    end

    it 'returns false if outofbound cordinates are passed' do
      expect(Horizontal.valid?(@bitmap, [-1,3,2,"G"])).to eq(false)
    end

    it 'returns false if nil bitmap is passed' do
      expect(Horizontal.valid?(nil, [1,2,1,"W"])).to eq(false)
    end

    it 'returns true if valid args are passed' do
      expect(Horizontal.valid?(@bitmap, [1,2,1,"W"])).to eq(true)
    end
  end
end