require 'chunky_png'


class Julia
	def initialize
	end

	def black
		y = 0
		while y < 200
			x = 0
			while x < 200
				@png[x, y] = ChunkyPNG::Color::BLACK
				x += 1
			end
			y += 1
		end
	end

	def paint
		@png = ChunkyPNG::Image.new(200, 200, ChunkyPNG::Color::WHITE)
		black		
		@png.save('julia.png')
	end
end

picture = Julia.new
picture.paint