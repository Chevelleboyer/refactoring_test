def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  paint = Paint.new
  if is_dark_mode
    paint.darken_foreground
  else
    paint.lighten_foreground
  end
end

class Paint
	def initialize(label_text, x, y, foreground_color)
		@label_text = label_text
		@x = x
		@y = y
		@foreground_color = foreground_color
	end

	def darken_foreground
		paint(@label_text, @x, @y, @foreground_color - 10, '#111111'))
	end

	def lighten_foreground
		paint(@label_text, @x, @y, @foreground_color + 10, '#E0E0E0')
	end
end