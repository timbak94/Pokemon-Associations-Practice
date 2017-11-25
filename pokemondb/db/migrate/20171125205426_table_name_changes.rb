class TableNameChanges < ActiveRecord::Migration[5.1]
  def change
    rename_table :gym_leader, :gym_leaders 
    rename_table :trainer, :trainers
  end
end
