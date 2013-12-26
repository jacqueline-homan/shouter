class HashtagsController < ApplicationController
  def show
  	#@hashtag = params[:id]
  	#@shouts = Shout.search("##{@hashtag}")
  	@search = Search.new(term: hashtag)
  end

  private
  def hashtag
  	"##{params[:id]}"
  end
end
