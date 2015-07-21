require_relative 'Bulbasaur'
require_relative 'Charizard'
require_relative 'Squirtle'
require_relative 'Game'



game = Game.new


=begin
squirtle = Squirtle.new
puts squirtle.hp
# => 100

bulbasaur = Bulbasaur.new
puts bulbasaur.hp


squirtle.attack(bulbasaur)

puts bulbasaur.hp
# => 90
puts squirtle.hp
# => 100

bulbasaur.attack(squirtle)

puts bulbasaur.hp
# => 90
puts squirtle.hp
# => 80
=end

#how do i make enums?
#block comments http://stackoverflow.com/questions/2989762/multi-line-comments-in-ruby