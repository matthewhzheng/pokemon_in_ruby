require_relative 'PokemonBase'

class Bulbasaur < Pokemon
    def initialize
      super("Bulbasaur", :grass , 100, 10)
  end
  
  def attack(enemy)
    if enemy.type == :water
      @calculator.Calculate(@strength * 2, enemy)
    else
      @calculator.Calculate(@strength, enemy)
    end
  end
end