require_relative 'PokemonBase'

class Squirtle < Pokemon
    def initialize
      super("Squirtle", :water, 100, 10)
  end
  
  def attack(enemy)
    if enemy.type == :fire
      healthCalculator(@strength * 2, enemy)
    else
       healthCalculator(@strength, enemy)
    end
  end
end