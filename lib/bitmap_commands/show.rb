class Show
  def self.apply(bitmap, args)
    bitmap.display if bitmap
    bitmap
  end

  def self.valid?(bitmap, args)
    true
  end
end