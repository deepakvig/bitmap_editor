class Vertical
  def self.apply(bitmap, args)
    x, y1, y2, color = args
    y_cords = [y1, y2]

    (y_cords.min..y_cords.max).each do |y|
      bitmap.set_color(x, y, color)
    end
    bitmap
  end

  def self.valid?(bitmap, args)
    color = args.pop

    return false unless bitmap && args.all? { |a| a.is_a?(Integer) }

    args[0] >= 1 && args[0] <= bitmap.col && args[1] >= 1 && args[1] <= bitmap.row && args[2] >= 1 && args[2] <= bitmap.row
  end
end