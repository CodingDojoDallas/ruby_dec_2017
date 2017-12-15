class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    validates :name, :desc, presence: true
end
