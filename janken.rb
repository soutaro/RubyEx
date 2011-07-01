puts("paper=0, scisors=1, stone=2 ?")
choice = gets()
player = Integer(choice)
computer = rand(3)
puts("computer: #{computer}")
diff = player - computer
if diff == 0
  puts("even")
elsif diff == 1 || diff == -2
    puts("win")
else
    puts("lose")
end