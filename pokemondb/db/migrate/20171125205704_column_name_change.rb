class ColumnNameChange < ActiveRecord::Migration[5.1]
  def change
    rename_column :pokemon, :field_id, :region_id
  end
end
