class Point
  attr_accessor :x
  attr_accessor :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end

class Base
  attr_accessor :border_color
  attr_accessor :fill_color
  
  def options
    {
      :stroke => self.border_color,
      :fill => self.fill_color,
    }
  end
  
  def initialize(*args)
    @border_color = [0,0,1,1]
    @fill_color = [0,0,0,1]
  end
end

class Line < Base
  attr_reader :head
  attr_reader :tail
  
  def initialize(head,tail)
    super
    
    @head = head
    @tail = tail
  end
  
  def render(canvas)
    canvas.line(self.head.x, self.head.y, self.tail.x, self.tail.y, self.options)
  end
end

class Square < Base
  attr_reader :origin
  attr_accessor :size
  
  def initialize(origin,size)
    super
    
    @origin = origin
    @size = size
  end
  
  def render(canvas)
    canvas.square(self.origin.x, self.origin.y, self.size, self.options)
  end
end
# origin = Point.new(100,150)
# size = 50
# square = Square.new(Point.new(100,150), 50)
# p square

class Circle < Base
  attr_reader :center
  attr_accessor :radius
  
  def initialize(center,radius)
    super
    
    @center = center
    @radius = radius
  end
  def render(canvas)
    canvas.circle(self.center.x, self.center.y, self.radius, self.options)
  #   canvas.line(self.head.x, self.head.y, self.tail.x, self.tail.y)
  end
end

class Polygon < Base
  attr_reader :points
  def initialize(points)
    super
    @points = points
  end
  def render(canvas)
    points = self.points
    points << self.points[0]
    
    points.each.with_index do |point, index|
      next_point = points[index+1]
      if next_point
        canvas.line(point.x, point.y, next_point.x, next_point.y, self.options)
      end
    end
  end
end
