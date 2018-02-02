class Clear
  def self.apply(bitmap, args)
    bitmap.clear
    bitmap
  end

  def self.valid?(bitmap, args)
    !!bitmap
  end
end