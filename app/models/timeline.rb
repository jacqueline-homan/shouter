class Timeline
  extend ActiveModel::Naming
  def initialize user
  	@user = user
  end

  def shouts
    Shout.where(user_id: shout_user_ids) # SELECT * FROM shouts WHERE user_id IN (1,2,3,4)
  end

  private
  def shout_user_ids
    [@user.id] + @user.followed_user_ids 
  end 
end