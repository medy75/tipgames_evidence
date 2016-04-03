class FixMachineColumnName < ActiveRecord::Migration
  def change
  	rename_column :machines, :type, :category
  end
end
