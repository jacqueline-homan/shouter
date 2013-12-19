class User < ActiveRecord::Base
  has_many :shouts

  has_many :followed_user_relationships, 
    foreign_key: :follower_id, 
    class_name: 'FollowingRelationship'
  has_many :followed_users, through: :followed_user_relationships

  has_many :follower_relationships, 
    foreign_key: :followed_user_id, 
    class_name: 'FollowingRelationship'  
  has_many :followers, through: :follower_relationships

# What this does: SELECT * FROM following_relationships WHERE follower_id = ?
  # What this means is that users have:
  # following_relationships
  # follower_id and followed_user_id
end
