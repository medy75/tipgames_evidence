class Branch < ActiveRecord::Base
	belongs_to :user
	has_many :machines
	validates_presence_of :name
	validates_presence_of :address
end
