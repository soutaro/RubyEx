a = [1,2,3,4,9,8,15,7]
sum = 0

for x in a
  sum = sum + x
end 

puts sum

size = 0

for x in a
  size = size + 1
end

puts size

for x in a
  if x % 2 == 1
    puts x
  end
end

max = a[0]
for x in a
  if max < x 
    max = x
  end
end
puts max
    
    