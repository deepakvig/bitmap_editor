require_relative '../lib/bitmap_commands/create.rb'

describe Create do
  before do
    @bitmap = Bitmap.new 3, 3
  end

  context '#apply' do
    
    it 'should create a bitmap' do
      expect(Create.apply(@bitmap, [2,2]).grid).to eq([["O","O"],["O","O"]])
    end
  end

  context "#valid?" do
    it 'returns false if wrong arguments are passed' do
      expect(Create.valid?(nil, [5,6,7])).to eq(false)
    end

    it 'returns false if negative args are passed' do
      expect(Create.valid?(nil, [-1,10])).to eq(false)
    end

    it 'returns true if valid args are passed' do
      expect(Create.valid?(nil, [5,6])).to eq(true)
    end
  end
end