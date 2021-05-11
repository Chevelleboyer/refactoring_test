def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  if is_dark_mode
    darken_foreground
  else
    lighten_foreground
  end
end

def darken_foreground(label_text, x, y, foreground_color)
	paint(label_text, x, y, foreground_color - 10, '#111111')
end

def lighten_foreground(label_text, x, y, foreground_color)
	paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
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