class Branch < ActiveRecord::Base
	has_and_belongs_to_many :users, :uniq => true
	has_many :machines
	validates_presence_of :name
	validates_presence_of :address
end
