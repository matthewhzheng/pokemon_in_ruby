#Pokemon base class
#how can i make this abstract? It doesn't look like it is common practice to do that.
class Pokemon
  def initialize(name, type, hp, strength)
    @name = name
    @type = type
    @hp = hp
    @strength = strength
    @calculator = HealthCalculator.new
  end
  
  def name
    return @name
  end
  
  def type
    return @type
  end
  
  def hp
    return @hp
  end
  
  #equal sign for setter
  def hp=(hp)
     @hp = hp
  end
  
  def strength
    return @strength
  end
end


class HealthCalculator
  
  def Calculate(damageToOpponent, opponent)
        if opponent.hp - damageToOpponent < 0
          opponent.hp = 0
        else
          opponent.hp = opponent.hp - damageToOpponent
        end
  end
end
