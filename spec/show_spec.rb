require_relative '../lib/bitmap_commands/show.rb'
require_relative '../lib/bitmap.rb'

describe Show do
  before do
    @bitmap = Bitmap.new 3, 3
  end

  context "#valid?" do
    it 'returns true always' do
      expect(Show.valid?(nil, [1,2,1,"W"])).to eq(true)
      expect(Show.valid?(@bitmap, [1,2,1,"W"])).to eq(true)
    end
  end
end