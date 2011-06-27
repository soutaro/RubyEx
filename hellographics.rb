require "canvas"
require "graphics"

objects = []

objects << Line.new(Point.new(10,10), Point.new(100,100))

p1 = Point.new(100,200)
p2 = Point.new(150,130)
line = Line.new(p1,p2)

objects << line

objects << Line.new(Point.new(50,10), Point.new(10,50))

p3 = Point.new(400,400)
p4 = Point.new(500,500)
line = Line.new(p3,p2)

objects << line

objects << Circle.new(Point.new(100,50), 100)
objects << Circle.new(Point.new(50,10), 30)

sq1 = Square.new(Point.new(20,20), 70)
objects << sq1

sq2 = Square.new(Point.new(100,200), 300)
objects << sq2

Canvas.create("hello.png") do |c|
  for obj in objects
    obj.render(c)
  end
end
