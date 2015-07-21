require_relative 'PokemonBase'

class Bulbasaur < Pokemon
    def initialize
      super("Bulbasaur", :grass , 100, 10)
  end
  
  def attack(enemy)
    if enemy.type == :water
      healthCalculator(@strength * 2, enemy)
    else
       healthCalculator(@strength, enemy)
    end
  end
end