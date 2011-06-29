require "canvas"
require "graphics"

objects = []

polygon = Polygon.new([Point.new(10,10), Point.new(20,20), Point.new(25,30), Point.new(10,40), Point.new(5,15)])

objects << polygon

Canvas.create("hello.png") do |c|
  for obj in objects
    obj.render(c)
  end
end
