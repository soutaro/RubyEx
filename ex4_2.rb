puts("phone number ?")
s = gets.chomp()
unless s.length == 11
  puts("error!")
else
  head = s[0..2]
  middle = s[3..6]
  tail = s[7..10]
  puts("#{head}-#{middle}-#{tail}")
end