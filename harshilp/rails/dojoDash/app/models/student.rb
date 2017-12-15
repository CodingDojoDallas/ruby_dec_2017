class Student < ActiveRecord::Base
  belongs_to :dojo
  validates :first_name, :last_name, :email, presence: true, length: {minimum:2}
  validates :email, uniqueness: true
end
