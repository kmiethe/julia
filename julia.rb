require 'chunky_png'

png = ChunkyPNG::Image.new(100, 100, ChunkyPNG::Color::WHITE)
png.save('filename.png', :interlace => true)