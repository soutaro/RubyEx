def sum(a)
  sum = 0
  for x in a
    sum = sum + x
  end
  return sum
end

puts sum([1,3,7])

def max(a)
  max = a[0]
  for x in a
    if max < x
      max = x 
    end
  end
  return max
end

puts max([1,2,3,6,4,11,5])

def size(a)
  size = 0
  for x in a
    size = size + 1
  end
  return size
end

puts size([1,3,5,7,9])
puts size([4])
puts size([])

def min(a)
    min = a[0]
  for x in a
    if x < min
      min = x
    end
  end
  return min
end

puts min([2,5,4,1,6])
puts min([])
puts min([3])

p "hello"

def abs(abs)
  if abs < 0
    0 - abs
  else
    abs
  end
end

# def abs(x)
#   if x < 0
#     -x
#   else
#     x
#   end
# end

p abs(-3)
p abs(7)
p abs(0)
p abs(-18)