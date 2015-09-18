class User < ActiveRecord::Base
	has_secure_password


	has_many :meetups
	has_many :festivals, through: :meetups
end

