require "canvas"
require "graphics"

objects = []

p = Point.new(10,10)
p1 = Point.new(600,600)
line = Line.new(p,p1)
line.border_color = [0,0,1,1]
objects << line


circle = Circle.new(Point.new(150, 150), 80)
circle.fill_color = [1,0,1,0.5]
circle.border_color = [1,0,1,1]
objects << circle


circle2 = Circle.new(Point.new(280, 280), 80)
circle2.fill_color = [0,1,0,0.5]
circle2.border_color = [0,1,0,1]
objects << circle2

circle3 = Circle.new(Point.new(400, 400), 80)
circle3.fill_color = [1,1,1,0.5]
circle3.border_color = [0,0,0,0.5]
objects << circle3


square = Square.new(Point.new(500,500), 100)
# square.fill_color = [1,1,0,1]
objects << square

polygon = Polygon.new([Point.new(500,500), Point.new(500,200), Point.new(200,250)])
polygon.border_color = [0,1,0,1]
objects << polygon

Canvas.create("hello.png") do |c|
  for obj in objects
    obj.render(c)
  end
end
