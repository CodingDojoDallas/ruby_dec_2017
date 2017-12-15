class Message < ActiveRecord::Base
  validates :content, length: { in: 10..280, message: "Message must be between 10 and 280 characters." }
  belongs_to :user, required: true
  has_many :comments
end
