class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
    	t.column :name, :string
    	t.column :address, :string
    	t.column :city, :string
		t.timestamps null: false
    end
  end
end
