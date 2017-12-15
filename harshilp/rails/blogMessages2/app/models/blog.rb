class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_many :owners
    has_many :users, through: :owners
    has_many :comments, as: :imageable
    validates :name, :desc, presence: true
end
