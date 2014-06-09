class User < ActiveRecord::Base

	has_secure_password

	validates :password, presence: true, length: { minimum: 5 }
	validates :email, uniqueness: true

end
