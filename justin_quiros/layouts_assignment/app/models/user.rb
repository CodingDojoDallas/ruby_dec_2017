class User < ActiveRecord::Base
	validates :first_name, :last_name, :favorite_language, presence: true, length: { in: 2..40 }
end
