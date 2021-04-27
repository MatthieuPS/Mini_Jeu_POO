 require 'pry'

 class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  #inflige des dégats au joueur
  def gets_damage(damage)
    @life_points -= damage
    @life_points = @life_points.clamp(0, 100)
    if @life_points > 0 
      show_state 
    else
      puts "Le joueur #{@name} a été tué"
    end
  end


  def show_state
    #affiche le nombre de points de vie du joueur
   if @life_points > 0
    puts "Le joueur #{@name} a #{@life_points} points de vie"

    #affiche que le joueur n'a plus de points de vie
   else
    puts "Le joueur #{@name} a #{@life_points} points de vie, il est mort!"
   end
  end
    
  def attacks(player)
    puts "Le joueur #{self.name} attaque le joueur #{player.name}"
          damage = compute_damage 
     puts "Le joueur #{self.name} inflige #{damage} points de dommages à #{player.name}"
     player.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end
  
 end


 
#  binding.pry

