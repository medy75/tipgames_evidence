class User < ActiveRecord::Base
	has_many :branches
	# has_secure_password
	validates_presence_of :name
	validates_presence_of :username
	validates_presence_of :password

end
