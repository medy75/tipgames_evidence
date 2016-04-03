class Machine < ActiveRecord::Base
	TYPE = ['VLT', 'Magic', 'Ruleta']
	belongs_to :branch
	has_many :bilances
	validates_presence_of :name
	validates_presence_of :category
end
