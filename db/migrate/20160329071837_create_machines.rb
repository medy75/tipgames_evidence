class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
    	t.column :name, :string
    	t.column :type, :string
      	t.timestamps null: false
    end
  end
end
