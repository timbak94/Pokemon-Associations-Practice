class CreateRegionTable < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name 
      t.integer :champion_id 
    end
  end
end
