class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy
end
