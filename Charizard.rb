require_relative 'PokemonBase'

class Charizard < Pokemon
    def initialize
      super("Charizard", :fire, 100, 10)
  end
  
  def attack(enemy)
    if enemy.type == :grass
      @calculator.Calculate(@strength * 2, enemy)
    else
      @calculator.Calculate(@strength, enemy)
    end
  end
end