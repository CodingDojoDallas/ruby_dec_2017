class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :content, presence: true 
  validates :title, :content, length: {minimum:2} 
end
