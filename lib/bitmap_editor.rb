Dir["lib/bitmap_commands/*.rb"].each {|file| require_relative '../' + file }

class BitmapEditor

  def initialize
    @commands = {
      'I' => Create,
      'C' => Clear,
      'L' => Color,
      'V' => Vertical,
      'H' => Horizontal,
      'S' => Show
    }
  end

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    bitmap = nil
    File.open(file).each do |line|
      line = line.chomp
      args = line.split(' ')
      command = args.shift
      
      klass = @commands[command]
      
      raise ArgumentError, 'unrecognised/invalid command :(' unless klass && klass.valid?(bitmap, clean_args(args))

      bitmap = klass.apply(bitmap, clean_args(args))
    end
  end

  private

  def clean_args args
    clean_arr = []
    args.each do |arg|
      clean_arr << (is_num?(arg) ? Integer(arg) : arg)
    end
    clean_arr
  end

  def is_num?(str)
    !!Integer(str)
  rescue ArgumentError, TypeError
    false
  end
end
