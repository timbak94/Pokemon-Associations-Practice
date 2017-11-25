class CreateMovesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.string :name 
      t.integer :type_id 
    end
  end
end
