class HomeController < ApplicationController
  def index
  	@groups = (1..42).to_a.shuffle.in_groups(4, false)
  	@memories = Memory.order('random()').map{|p| p.photo.url}.in_groups(4,false)
  end
end
