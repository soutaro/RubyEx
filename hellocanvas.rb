require "canvas"

Canvas.create("hello.png") do |c|
  i = 0
  while i < 8
    j = 0
    while j < 8
      if (j % 2) == (i % 2)
        c.square(i*70, j*70, 70, :fill => [0,0,0,1])
      else
        c.square(i*70, j*70, 70)
      end
      j = j + 1
    end
    i = i + 1
  end
end

# c.square(20,20,500)
# c.square(30,30,450)
# c.square(40,40,400)
