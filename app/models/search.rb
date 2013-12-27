class Search
  extend ActiveModel::Naming
  attr_reader :term
  def initialize options = {}
  	@term = options.fetch(:term, "")
  end

  def shouts    
    Shout.text_shouts.where(content_id: text_shouts)
    
  end

  private

  def text_shouts
  	TextShout.where("body Like ?", search_term)    
  end

  def search_term
    "%#{term}%"
  end	

end