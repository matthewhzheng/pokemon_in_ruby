# The most advanced Pokémon game, ever.

![](https://sickr.files.wordpress.com/2013/08/pokemon_starters.png)

# Exercise

Implement a Pokémon game with three different Pokémon:

| Pokémon | ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/001.gif) |  ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/004.gif) | ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/007.gif) |
| ---     | ---       | ---        | ---      |
| **Name** | Bulbasaur | Charmander | Squirtle |
| **Type**    | Grass | Fire | Water |
| **HP** | 100 | 100 | 100 | 100 |
| **Strength** | 10 | 10 | 10 | 10 |

- Each Pokémon has 10 points of strength, which means that when they attack another Pokémon, they deal 10 damage points.
- Each Pokémon has 100 health points.
- Some Pokémon types do extra damage to other types, see chart below

### Pokemon damage chart

| type  | **Grass** | **Fire** | **Water** |
| :--- | :---:  | :---:  | :---:   |
| **Grass** | 1x    | 1x   | 2x    |
| **Water** | 1x    | 2x   | 1x    |
| **Fire**  | 2x    | 1x   | 1x    |

- Fire Pokémon do double damage to Grass Pokémon
- Water Pokémon do double to Fire Pokémon
- Grass Pokémon do double damage on Water Pokémon

## Game rules

This Pokémon game can be played in Ruby, based on the following instruction:

- Each Pokémon is created by instantiating a class with the type of Pokémon (eg, `squirtle = Squirtle.new`)
- To attack, a Pokémon uses its method `attack` on another Pokémon (eg, `squirtle.attack(bulbasaur)`)
- You can check how many HP's are left by calling `hp` on a Pokémon (eg, `squirtle.hp`)
- When a Pokémon is KO'd, its HP's stay at 0, they can't be negative.

```rb
squirtle = Squirtle.new
squirtle.hp
# => 100

bulbasaur = Bulbasaur.new
bulbasaur.hp = 100

squirtle.attack(bulbasaur)

bulbasaur.hp
# => 90
squirtle.hp
# => 100

bulbasaur.attack(squirtle)

bulbasaur.hp
# => 90
squirtle.hp
# => 80
```

## Requirements

How would you implement this?

You may run `rspec` in the root of this directory to run the test suite. We have provided one failing test to get you started. You'll need to add the code and the additional tests to demonstrate your game respects the rules.

Fork the project, write code and passing tests, and issue a pull request with your solution.

## Resources

Need help with RSpec?

* Check out the [documentation](https://relishapp.com/rspec/docs/gettingstarted)
* Discover [best practices and additional resources](http://betterspecs.org)

---

[![Build Status](https://travis-ci.org/midu/pokemon.svg)](https://travis-ci.org/midu/pokemon)
