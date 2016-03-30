class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.column :role, :string
    	t.column :name, :string
    	t.column :username, :string
    	t.column :password, :string
      t.timestamps null: false
    end
  end
end
