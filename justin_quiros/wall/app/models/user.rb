class User < ActiveRecord::Base
	validates :username, presence: true, length: { in: 5..40 }
end
