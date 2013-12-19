module UsersHelper
  def follow_button UsersHelper
  	button_to 'Follow', user_follow_path(user)
  end
end