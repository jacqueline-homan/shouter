class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
  	shout: "200x200>"
  }
  def index
  	image_file_name
  end
end
