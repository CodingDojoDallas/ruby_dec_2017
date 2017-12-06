class Message < ActiveRecord::Base
	validates :content, presence: true, length: { in: 10..500 }
	belongs_to :user
end
