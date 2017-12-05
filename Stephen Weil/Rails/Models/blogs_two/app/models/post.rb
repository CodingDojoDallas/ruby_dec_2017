class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :content, length: { minimum: 10 }
  belongs_to :blog
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :comments, as: :commentable
end
