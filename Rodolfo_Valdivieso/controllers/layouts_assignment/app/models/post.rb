class Post < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :content, presence: true, length: { in: 2..255 }
end
