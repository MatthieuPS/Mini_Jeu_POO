 
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Josy")


while  player1.life_points > 0 && player2.life_points > 0 do
  puts "Niveau de vie :"
  puts player1.show_state 
  puts player2.show_state 
puts "/////////////////////////////////////////////////////////""\n\n"
  puts "Hajime ! :"
   player1.attacks(player2) 
  if  player2.life_points <= 0 
    break 
  else 
    player2.attacks(player1)
  end    
gets.chomp
  end

 

 binding.pry

