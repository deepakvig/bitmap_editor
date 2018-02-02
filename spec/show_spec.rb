require_relative '../lib/bitmap_commands/show.rb'
require_relative '../lib/bitmap.rb'

describe Show do
  before do
    @bitmap = Bitmap.new 3, 3
  end

  context "#valid?" do
    it 'returns false if nil bitmap is passed' do
      expect(Show.valid?(nil, [1,2,1,"W"])).to eq(false)
    end

    it 'returns true if valid args are passed' do
      expect(Show.valid?(@bitmap, [1,2,1,"W"])).to eq(true)
    end
  end
end