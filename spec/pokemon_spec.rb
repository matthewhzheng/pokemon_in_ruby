require_relative '../Bulbasaur'
require_relative '../Charizard'
require_relative '../Squirtle'
require_relative '../PokemonBase'
require 'rspec'
#require_relative 'spec_helper' #not sure what this does yet, rspec codeschool said to import... allows should, but it is deprecated... maybe we don't need this

describe Squirtle do
  let(:squirtle) { described_class.new } #this instatiates the class

  describe "#initialize" do
    it "sets the initial HP" do
      expect(squirtle.hp).to eq(100)
    end
    it "sets the initial type" do
      expect(squirtle.type).to eq(:water)
    end
    it "sets the initial Name" do
      expect(squirtle.name).to eq("Squirtle")
    end  
    it "sets the initial Strength" do
      expect(squirtle.strength).to eq(10)
    end      
  end
  
  #would actually like to make sure that it calls health calculator, but we can also check the hp instead.
  describe "#attack" do
    it "does 20 damage to fire" do
      charizard = Charizard.new
      squirtle.attack(charizard)
      expect(charizard.hp).to eq(80)
    end
    it "does 10 damage to grass" do
      bulbasaur = Bulbasaur.new
      squirtle.attack(bulbasaur)
      expect(bulbasaur.hp).to eq(90)
    end

    it "does 10 damage to water" do
    secondSquirtle = Squirtle.new
    squirtle.attack(secondSquirtle)
    expect(secondSquirtle.hp).to eq(90)
    end
  end
end

describe Charizard do
  let(:charizard) { described_class.new } #this instatiates the class

  describe "#initialize" do
    it "sets the initial HP" do
      expect(charizard.hp).to eq(100)
    end
    it "sets the initial type" do
      expect(charizard.type).to eq(:fire)
    end
    it "sets the initial Name" do
      expect(charizard.name).to eq("Charizard")
    end  
    it "sets the initial Strength" do
      expect(charizard.strength).to eq(10)
    end 
  end
  
  describe "#attack" do
    it "does 10 damage to fire" do
      secondCharizard = Charizard.new
      charizard.attack(secondCharizard)
      expect(secondCharizard.hp).to eq(90)
    end
    it "does 20 damage to grass" do
      bulbasaur = Bulbasaur.new
      charizard.attack(bulbasaur)
      expect(bulbasaur.hp).to eq(80)
    end

    it "does 10 damage to water" do
    squirtle = Squirtle.new
    charizard.attack(squirtle)
    expect(squirtle.hp).to eq(90)
    end
  end
end

describe Bulbasaur do
  let(:bulbasaur) { described_class.new } #this instatiates the class

  describe "#initialize" do
    it "sets the initial HP" do
      expect(bulbasaur.hp).to eq(100)
    end
    it "sets the initial type" do
      expect(bulbasaur.type).to eq(:grass)
    end
    it "sets the initial Name" do
      expect(bulbasaur.name).to eq("Bulbasaur")
    end  
    it "sets the initial Strength" do
      expect(bulbasaur.strength).to eq(10)
    end 
  end
  
  #would actually like to make sure that it calls health calculator, but we can also check the hp instead.
  describe "#attack" do
    it "does 10 damage to fire" do
      charizard = Charizard.new
      bulbasaur.attack(charizard)
      expect(charizard.hp).to eq(90)
    end
    it "does 10 damage to grass" do
      secondBulbasaur = Bulbasaur.new
      bulbasaur.attack(secondBulbasaur)
      expect(secondBulbasaur.hp).to eq(90)
    end

    it "does 20 damage to water" do
    squirtle = Squirtle.new
    bulbasaur.attack(squirtle)
    expect(squirtle.hp).to eq(80)
    end
  end
end

describe "healthCalculator" do
  it "reduces hp by damange input" do
    charizard = Charizard.new
    charizard.hp = 90
    healthCalculator(10, charizard)
    expect(charizard.hp).to eq(80)
  end
  it "can't be negative" do
    charizard = Charizard.new
    charizard.hp = 10
    healthCalculator(20, charizard)
    expect(charizard.hp).to eq(-0)      
  end
end

#Matt's notes, you can ignore these
#specification file -> describe examples by saying it does certain things

#example will describle the class we test against

#rspec was downloaded through gem but what actually happens under the covers?
#ran rspec --init in dir to get spec_helper