require "canvas"
require "graphics"

objects = []

i = 1
while i <= 18
  j = 1
  while j <= 18
    sq = Square.new(Point.new(i*30,j*30), 30)
    objects << sq
    j = j + 1
  end
  i = i + 1
end


i = 1
while i <= 3
  j = 1
  while j <= 3
      k = 1
    while k < 2
      cir = Circle.new(Point.new(i*180-k*60,j*180-k*60), 3)
      objects << cir
      k = k + 1
    end
    j = j + 1
  end
  i = i + 1
end

i = 0
while i < 3
  j = 0
  while j < 3
    circle = Circle.new(Point.new(180*i + 120, 180*j + 120), 5)
    objects << circle
    j += 1
  end
  i += 1
end

Canvas.create("hello.png") do |c|
  for obj in objects
    obj.render(c)
  end
end
