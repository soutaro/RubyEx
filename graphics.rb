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
  
  def render(canvas)
    canvas.line(self.head.x, self.head.y, self.tail.x, self.tail.y)
  end
end

class Square
  attr_reader :origin
  attr_accessor :size
  
  attr_accessor :fill_color
  attr_accessor :border_color
  
  def initialize(origin,size)
    @origin = origin
    @size = size
    
    @fill_color = [0,0,0,0]
    @border_color = [0,0,0,1]
  end
  
  def render(canvas)
    canvas.square(self.origin.x, self.origin.y, self.size, :fill => self.fill_color, :stroke => self.border_color)
  end
end
# origin = Point.new(100,150)
# size = 50
# square = Square.new(Point.new(100,150), 50)
# p square

class Circle
  attr_reader :center
  attr_accessor :radius
  def initialize(center,radius)
    @center = center
    @radius = radius
  end
  def render(canvas)
    canvas.circle(self.center.x, self.center.y, self.radius)
  #   canvas.line(self.head.x, self.head.y, self.tail.x, self.tail.y)
  end
end

class Polygon
  attr_reader :points
  def initialize(points)
    @points = points
  end
  def render(canvas)
    points = self.points
    points << self.points[0]
    
    points.each.with_index do |point, index|
      next_point = points[index+1]
      if next_point
        canvas.line(point.x, point.y, next_point.x, next_point.y)
      end
    end
  end
end
