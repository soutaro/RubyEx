require "canvas"

Canvas.create("hello.png") do |c|
  i = 0
  while i < 8
    j = 0
    while j < 8
      c.square(i*70, j*70, 70)
      j = j + 1
    end
    i = i + 1
  end
  
  c.circle(100,100,30)
end

# c.square(20,20,500)
# c.square(30,30,450)
# c.square(40,40,400)
