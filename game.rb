# function that calls question/checks answer and returns winner 
def game(player)
  num1 = rand(1...20)
  num2 = rand(1...20)
  answer = num1 + num2
  puts "#{player.name}: What does #{num1} plus #{num2} equal?"
  input = gets.chomp
  if input.to_i == answer
    puts "#{player.name}: YES! You are correct."
    true
  else
    puts "#{player.name}: Seriously? No!"
    false
  end
end

# function to display score 
def score(p1, p2)
  puts "P1: #{p1.life_count}/3 vs P2: #{p2.life_count}/3"
end

# function to display end game message
def winner(player)
  puts "#{player.name} wins with a score of #{player.life_count}/3"
  puts "----- GAME OVER -----"
  puts "Good bye!"
end
