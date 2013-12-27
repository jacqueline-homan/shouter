class TextShout < ActiveRecord::Base
  attr_accessible :body
  
  def index
  	body
  end
end
