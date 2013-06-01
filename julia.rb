require 'chunky_png'


class Julia
	def initialize
	end

	def paint
		png = ChunkyPNG::Image.new(200, 200, ChunkyPNG::Color::WHITE)
		png[0, 0] = ChunkyPNG::Color::BLACK
		
		a = 0
		while a < 200
  		png[a, 0] = ChunkyPNG::Color::BLACK
  		a += 1
	end
		png.save('julia.png')
	end
end

picture = Julia.new
picture.paint