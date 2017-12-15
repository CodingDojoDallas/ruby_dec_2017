class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: { minimum: 2 }
    validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than: 150 }
    validates :email_address, presence: true
end
