class Post < ActiveRecord::Base
  validates :title, length: { in: 1..20, message: "Title must be between 1 and 20 characters." }
  validates :content, length: { minimum: 1, message: "Content field is required." }
  belongs_to :user
end
