class ShoutsController < ApplicationController
  def index
    @search = Shouts.search do
      keywords params[:query]
    end
    @shouts = @search.results
  end
end

  def show
  	#binding.pry
  	@shout = Shout.find(params[:id])
  end
  
end
