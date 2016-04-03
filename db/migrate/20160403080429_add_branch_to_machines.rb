class AddBranchToMachines < ActiveRecord::Migration
  def change
    add_column :machines, :branch_id, :integer
    add_index :machines, :branch_id
  end
end
