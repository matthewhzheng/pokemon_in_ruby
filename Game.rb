class Game
  
  def initialize
    @firstPokemon = nil
    @secondPokemon = nil
    selectFirstPokemon
    selectSecondPokemon
    fight
  end
  
  def selectFirstPokemon
    puts "Select first pokemon for fight."
    printSelection
    choice = gets.chomp
    
    @firstPokemon = setSelection(choice)
    if @firstPokemon == nil
      selectFirstPokemon
    end
    
  end
  
  def selectSecondPokemon
    puts "Select second pokemon for fight."
    printSelection
    choice = gets.chomp
    @secondPokemon = setSelection(choice)
    if @secondPokemon == nil
      selectSecondPokemon
    end
  end
  
  def fight
    puts "Begin fight!"
    puts @firstPokemon.name + " vs " + @secondPokemon.name
    
    while @firstPokemon.hp > 0 && @secondPokemon.hp > 0
      #this gives the first pokemon an advantage, but i think that's how the real game worked.
      @firstPokemon.attack(@secondPokemon)
      
      puts @firstPokemon.name + " attacked " + @secondPokemon.name
      puts @secondPokemon.name + " has " + @secondPokemon.hp.to_s + " hp remaining"
      
      if @secondPokemon.hp > 0
        @secondPokemon.attack(@firstPokemon)
        
        puts @secondPokemon.name + " attacked " +@firstPokemon.name
        puts @firstPokemon.name + " has " + @firstPokemon.hp.to_s + " hp remaining"
        
        if @firstPokemon.hp == 0
          puts @secondPokemon.name + " defeated " + @firstPokemon.name
        end
              
      else
        puts @firstPokemon.name + " defeated " + @secondPokemon.name
      end
      
    end
  end
  
  def setSelection(choice)
    
    case choice
      when "1"
        return Bulbasaur.new
      when "2"
        return Charizard.new
      when "3"
        return Squirtle.new
      else
        puts "Invalid choice. try again."
        return nil
    end
  end
  
  def printSelection
    puts "Enter 1 for Bulbasaur"
    puts "Enter 2 for Charizard"
    puts "Enter 3 for Squirtle"
  end
end
