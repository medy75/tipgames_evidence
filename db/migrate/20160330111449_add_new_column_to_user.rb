class AddNewColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :email, :string
  	add_column :users, :phone, :string
  	add_column :users, :address, :string
  	add_column :users, :city, :string
  	add_column :users, :birth_date, :string
  end
end
