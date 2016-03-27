module PixelPicker
  class ColorName
    require 'RMagick'
    include Magick

    attr_accessor :image_file

    def initialize(image_file)
      self.image_file = image_file
    end

    def palette
      picture = ImageList.new(image_file)
      palette = {}
      picture.each_pixel do |pixel, c, r|
        next if pixel.to_hsla.last == 0
        case pixel.to_hsla.first
        when 0..20, 330..360
          color_name = :red
        when 20..50
          color_name = :orange
        when 50..69
          color_name = :yellow
        when 70..84
          color_name = :lime
        when 85..170
          color_name = :green
        when 171..191
          color_name = :aqua
        when 192..264
          color_name = :blue
        when 265..289
          color_name = :violet
        when 290..329
          color_name = :purple
        else
          next
        end
        palette[color_name].nil? ? palette[color_name] = 1 : palette[color_name] += 1
      end
      palette
    end

    def max
      palette.max {|a, b| a[1] <=> b[1]}.first
    end

    def min
      palette.min {|a, b| a[1] <=> b[1]}.first
    end

  end
end
