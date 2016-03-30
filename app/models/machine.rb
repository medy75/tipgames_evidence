class Machine < ActiveRecord::Base
	STATUS = ['VLT', 'Magic', 'Ruleta']
	belongs_to :branch
	has_many :bilances
	validates_presence_of :name
	validates_presence_of :type
end
