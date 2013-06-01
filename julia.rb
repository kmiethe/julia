require 'chunky_png'


class Julia
	def initialize
	end

	def paint
		png = ChunkyPNG::Image.new(200, 200, ChunkyPNG::Color::WHITE)
		png.save('julia.png', :interlace => true)
	end
end

picture = Julia.new
picture.paint