class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages, dependent: :destroy
  has_many :comments, as: :imageable  
  validates :title, :content, presence: true
end
