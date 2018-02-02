class Horizontal
  def self.apply(bitmap, args)
    x1, x2, y, color = args
    x_cords = [x1, x2]

    (x_cords.min..x_cords.max).each do |x|
      bitmap.set_color(x, y, color)
    end
    bitmap
  end

  def self.valid?(bitmap, args)
    color = args.pop

    return false unless bitmap && args.all? { |a| a.is_a?(Integer) }
    
    args[0] >= 1 && args[1] <= bitmap.col && args[2] >= 1 && args[2] <= bitmap.row
  end
end