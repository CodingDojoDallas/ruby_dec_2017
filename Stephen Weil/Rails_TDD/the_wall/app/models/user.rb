class User < ActiveRecord::Base
    validates :username, length: { in: 6..25, message: "Username must be between 6 and 25 characters." }, uniqueness: { message: "Username already taken." }
    has_many :messages
    has_many :comments
end
