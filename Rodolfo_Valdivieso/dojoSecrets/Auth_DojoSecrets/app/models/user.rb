class User < ActiveRecord::Base
  has_secure_password

  validates :name, :presence => true #,  uniqueness: { case_sensitive: false },length: { minimum: 5 } 

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  before_create { self.email.downcase! unless self.email.blank? }

end
