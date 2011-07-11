class Hello
  def sum(*xs)
    xs.inject(1) {|x,y| x+y}
  end

  def average(*xs)
    sum(*xs) / xs.size
  end
end
