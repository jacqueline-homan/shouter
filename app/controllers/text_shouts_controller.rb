class TextShoutsController < ApplicationController
  
  def create
  	content = build_content
  	shout = current_user.shouts.build(content: content) #Why not use 'text_shout_parameters' instead?
  	if shout.save
  	  redirect_to dashboard_path
    else
      flash.alert = "Shout field can't be empty!"
      redirect_to dashboard_path
    end
  end

  
  private
  def text_shout_parameters
  	params.require(:text_shout).permit(:body)
  end

  def build_content
  	TextShout.new(text_shout_parameters)
  end

end

