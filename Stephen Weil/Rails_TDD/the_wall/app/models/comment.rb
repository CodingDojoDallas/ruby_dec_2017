class Comment < ActiveRecord::Base
  validates :content, length: { in: 1..100, message: "must be between 1 and 100 characters." }
  belongs_to :user
  belongs_to :message
  validates :message, :user, presence: true
end
