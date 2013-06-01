require 'chunky_png'


class Julia
	def initialize
	end

	def paint
		png = ChunkyPNG::Image.new(200, 200, ChunkyPNG::Color::WHITE)
		png[0, 0] = ChunkyPNG::Color::BLACK
		
		a = 0
		b = 0
		while a < 200 && b < 200
			png[a, b] = ChunkyPNG::Color::BLACK
			a += 1
			b += 1 if a == 200
			a = 0 if a == 200
		end

		png.save('julia.png')
	end
end

picture = Julia.new
picture.paint