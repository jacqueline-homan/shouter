class ShoutsController < ApplicationController
  def show
  	#binding.pry
  	@shout = Shout.find(params[:id])
  end
  
end
