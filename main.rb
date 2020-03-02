require './game'
require './player'


p1 = Player.new("Player 1", 1)
p2 = Player.new("Player 2", 0)



while p1.life_count > 0 && p2.life_count > 0
  if p1.turn_check == 1
    puts "----- NEW TURN -----"
    if game(p1) == false 
      p2.lose_life
    end
    score(p1, p2)
    p1.set_turn(0)
    p2.set_turn(1)
  elsif p2.turn_check == 1
    puts "----- NEW TURN -----"
    if game(p2) == false 
      p1.lose_life
    end
    score(p1, p2)
    p2.set_turn(0)
    p1.set_turn(1)
  end
end

if p1.life_count == 0
  winner(p2)
elsif p2.life_count == 0
  winner(p1)
end
