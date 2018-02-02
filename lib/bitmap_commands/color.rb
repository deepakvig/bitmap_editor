class Color
  def self.apply(bitmap, args)
    x, y, color = args

    bitmap.set_color(x, y, color)
    bitmap
  end

  def self.valid?(bitmap, args)
    color = args.pop
    return false unless bitmap && args.size == 2 && args.all? { |a| a.is_a?(Integer) }

    bitmap && bitmap.row >= args[0] && bitmap.col >= args[1]
  end
end