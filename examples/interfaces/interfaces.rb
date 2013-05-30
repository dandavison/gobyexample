class Rectangle

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area()
    @width * @height
  end

  def perim()
    2 * (@width + @height)
  end

end


class Circle

  def initialize(radius)
    @radius = radius
  end

  def area()
    Math::PI * @radius * @radius
  end

  def perim()
    2 * Math::PI * @radius
  end

end


rect = Rectangle.new(3, 4)
circ = Circle.new 5

print rect, "\n"
print rect.area, "\n"
print rect.perim, "\n"

print circ, "\n"
print circ.area, "\n"
print circ.perim, "\n"
