class FollowingRelationshipsController < ApplicationController
  def create
  	current_user.follow user
  	redirect_to user, notice: "Following user"
  end

  def destroy
  	current_user.unfollow user
  	redirect_to user, notice: "No longer following user"
  end

  # Demonstration of memoization and 
  # the extract method for avoiding/correcting
  # code dubplicating by use of writing
  # a method and putting it under 'private',
  # which allows us to delete the declaration
  # of the local variable, 'user', as in the
  # ' user = User.find(params[:user_id]' that 
  # previously was in the def blocks above.
  private
  def user
  	# We could simply write this:
  	#User.find(params[:user_id]), but
  	# that would mean that the def blocks above
  	# would be calling and looking up the
  	# record twice. To avoid this query cache
  	# "waste", we use memoization for this value 
  	# by assinging it to a local variable inside
  	# of this private method. 
    @_user ||= User.find(params[:user_id]) 
  end
end
