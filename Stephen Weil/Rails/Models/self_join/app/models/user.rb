class User < ActiveRecord::Base
    has_many :friendships
    has_many :friends, through: :friendships, source: :friend

    has_many :friended_by, class_name: "Friendship", foreign_key: "friend_id"
    has_many :admirers, through: :friended_by, source: :user
end
