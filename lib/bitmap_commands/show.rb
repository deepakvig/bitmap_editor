class Show
  def self.apply(bitmap, args)
    bitmap.display
    bitmap
  end

  def self.valid?(bitmap, args)
    !!bitmap
  end
end