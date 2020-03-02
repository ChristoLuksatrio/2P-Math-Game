# Contains player name and turn
# Sets player turn

class Player
  attr_accessor :name, :turn, :lives

  def initialize(name, turn)
    self.name = name
    self.turn = turn
    self.lives = 3
  end

  def life_count
    self.lives
  end

  def lose_life
    self.lives -= 1
  end

  def turn_check
    self.turn
  end

  def set_turn(num)
    self.turn = num
  end
end