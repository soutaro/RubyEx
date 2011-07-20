def gcd(x,y)
  while x != y
    if x < y
      y = y - x
    else
      x = x - y
    end
  end
  return x
end

puts gcd(9,28)
puts gcd(13,54)
puts gcd(8,28)