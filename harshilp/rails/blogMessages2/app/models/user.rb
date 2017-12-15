class User < ActiveRecord::Base
    has_many :owners
    has_many :blogs, through: :owners
    has_many :messages, dependent: :destroy
    has_many :posts, dependent: :destroy
    validates :first_name, :last_name, :email, presence: true
end
