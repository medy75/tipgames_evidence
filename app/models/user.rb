class User < ActiveRecord::Base
	has_and_belongs_to_many :branches, :uniq => true
	# has_secure_password
	validates_presence_of :name
	validates_presence_of :username
	validates_presence_of :password
	accepts_nested_attributes_for :branches, :reject_if => :all_blank, :allow_destroy => true
end
