class Shout < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :body ## This was handled under our whitelist.
  default_scope {order("created_at DESC")}
  #validates :body, presence: true
  belongs_to :content, polymorphic: true

  def self.search term
  	text_shouts = TextShout.where("body LIKE ?", "%#{term}%")
  	where(content_type: 'TextShout', conent_id: text_shouts)
  end
end