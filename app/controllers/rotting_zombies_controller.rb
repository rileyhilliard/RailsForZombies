class RottingZombiesController < ApplicationController
  
  def index
    @rotting_zombies = Zombie.rotting.limit(5)
    @fresh_zombies = Zombie.fresh
    @recient_zombies = Zombie.recent
  end
  
end
