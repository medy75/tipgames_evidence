class CreateUsersAndBrachies < ActiveRecord::Migration
  	def change
    	create_table :branches_users do |t|
	    	t.belongs_to :user, index: true
	    	t.belongs_to :branch, index: true
    	end
  	end
end
