require 'chunky_png'


class Julia
	def initialize
	end

	def black
		a = 0
		b = 0
		while a < 200
			@png[a, b] = ChunkyPNG::Color::BLACK
			while b < 200
				@png[a, b] = ChunkyPNG::Color::BLACK
				b += 1
			end
			b = 0
			a += 1
		end
	end

	def paint
		@png = ChunkyPNG::Image.new(200, 200, ChunkyPNG::Color::WHITE)
		@png[0, 0] = ChunkyPNG::Color::BLACK
		black
		@png.save('julia.png')
	end
end

picture = Julia.new
picture.paint