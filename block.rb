def f(n)
  a = n / 4
  b = n % 4
  yield(a,b)
end

f(15) do |a,b|
  p a
  p b
end


a = [1,2,3]

a.each do |x|
  p x
end

for x in a
  p x
end

def sum(a)
  sum = 0
  a.each do |x|
    sum = sum + x
  end
  sum
end

p sum([1,5,7,9])

a = [3,2,5]

a.each do |x|
  if x % 2 == 0
    p x
  end
end

p(a.select {|x| x % 2 == 0 && x > 5})

p(a.select{|x| x%2 == 0 }.select{|x| x > 5 })

p(a.map do |x|
  if x % 2 == 0
    true
  else
    false
  end
end)

y = 1
a.each do |x|
  y = y * x
end
p y
