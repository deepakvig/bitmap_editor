require_relative '../bitmap'

class Create
  MAX_PIXEL_COORDINATE = 250

  def self.apply(bitmap, args)
    # Delete the bitmap to create a new one
    bitmap = nil if bitmap

    column, row = args
    Bitmap.new(row, column)
  end

  def self.valid?(bitmap, args)
    
    return false unless args.length == 2 && args.all? { |a| a.is_a?(Integer) }
    
    MAX_PIXEL_COORDINATE >= args[0] && MAX_PIXEL_COORDINATE >= args[1] && args[0] > 0 && args[1] > 0
  end
end