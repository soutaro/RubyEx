PAPER = 0
SCISORS = 1
STONE = 2
puts("paper=0, scisors=1, stone=2 ?")
choice = gets()
player = Integer(choice)
computer = rand(3)
puts("computer: #{computer}")
if player == computer
  puts("even")
else
  if player == PAPER && computer == STONE ||
    player == STONE && computer == SCISORS ||
    player == SCISORS && computer == PAPER
    puts("win")
  else
    puts("lose")
  end
end