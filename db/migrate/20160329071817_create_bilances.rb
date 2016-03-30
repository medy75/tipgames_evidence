class CreateBilances < ActiveRecord::Migration
  def change
    create_table :bilances do |t|
    	t.column :in, :float
    	t.column :out, :float
    	t.column :date, :string
    	t.timestamps null: false
    end
  end
end
