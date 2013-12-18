class PhotoShoutsController < ApplicationController
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
  def photo_shout_parameters
  	params.require(:photo_shout).permit(:image)
  end

  def build_content
  	PhotoShout.new(photo_shout_parameters)
  end

end
