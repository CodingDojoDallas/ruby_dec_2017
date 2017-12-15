class Message < ActiveRecord::Base
  validates :message, presence: true, length: { minimum: 10 }
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable
end
