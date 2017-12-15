class Blog < ActiveRecord::Base
    has_many :comments, as: :commentable
    

    has_many :owners
    has_many :posts
  
    # all users that create/own blog
    has_many :users, through: :owners
  
    # all users that posted on blog
    has_many :user_posts, through: :posts, source: :user
  
    validates :name, :description, presence: true
end
