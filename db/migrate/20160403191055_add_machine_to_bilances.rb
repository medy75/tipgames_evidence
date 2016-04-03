class AddMachineToBilances < ActiveRecord::Migration
  def change
    add_column :bilances, :machine_id, :integer
    add_index :bilances, :machine_id
  end
end
