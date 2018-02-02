class Bitmap
  attr_reader :row, :col, :grid

  def initialize row, col
    @row, @col = row, col
    @grid = set_grid
  end

  def clear
    @grid = set_grid
  end

  def set_color(x, y, color)
    # Raise argument error if it is non numeric
    raise ArgumentError, 'Pixel doesnot exist' if x > @col || y > @row

    @grid[y-1][x-1] = color
  end

  def display
    @grid.each do |row|
      puts row.join('')
    end
    puts
  end

  private

  def set_grid
    grid = @grid || Array.new(@row)
    
    @row.times do |row|
      grid[row] = Array.new(@col, "O")
    end

    grid
  end
end
