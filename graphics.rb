class Point
  attr_accessor :x
  attr_accessor :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end

class Line
  attr_reader :head
  attr_reader :tail
  def initialize(head,tail)
    @head = head
    @tail = tail
  end
end

p1 = Point.new(100,200)
p2 = Point.new(150,130)
line = Line.new(p1,p2)
p p1
p p2
p line.head
p line.tail

p line

class Square
  attr_reader :origin
  attr_accessor :size
  def initialize(origin,size)
    @origin = origin
    @size = size
  end
end
# origin = Point.new(100,150)
# size = 50
square = Square.new(Point.new(100,150), 50)
p square

class Circle
  attr_reader :center
  attr_accessor :radius
  def initialize(center,radius)
    @center = center
    @radius = radius
  end
end

circle = Circle.new(Point.new(100,200), 40)
p circle
