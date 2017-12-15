class Post < ActiveRecord::Base
  validates :title, :content, presence: true, length: { in: 2..40 }
  belongs_to :user
end
