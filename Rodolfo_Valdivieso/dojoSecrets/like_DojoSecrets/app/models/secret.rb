class Secret < ActiveRecord::Base
  belongs_to :user
  has_many   :likes
  has_many   :secrets_likers, through: :likes, source: :user

  has_many   :users, through: :likes #, source: :user
  # has_many   :users
  # has_many   :secrets_users, through: :likes, source: :user

  validates :content, :presence => true 
end
