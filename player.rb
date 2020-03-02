class Player
  attr_accessor :name
  @@lives = 3

  def initialize(name)
    self.name = name
  end

  def life_count
    @@lives
  end
end