class User < ActiveRecord::Base
    validates :first_name, :last_name, length: { in: 2..20, message: 'Name must be between 2 and 20 characters.' }
    validates :favorite_language, length: { in: 1..15, message: 'Language must be between 1 and 15 characters.' }
    has_many :posts
end
