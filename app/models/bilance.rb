class Bilance < ActiveRecord::Base
	belongs_to :machine
	validates_presence_of :date
	validates_presence_of :in
	validates_presence_of :out
	validates_numericality_of :in, :message=>"Pouze číslo"
	validates_numericality_of :out, :message=>"Pouze číslo"
end
