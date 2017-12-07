class User < ActiveRecord::Base	
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :name, :email, presence: true, length: { in: 2..40 }
	validates :email, presence: true, uniqueness: { case_sensitive: true }, format: { with: EMAIL_REGEX }, length: { in: 4..40 }
	before_save { self.email.downcase! unless self.email.blank? }
	has_secure_password
end
