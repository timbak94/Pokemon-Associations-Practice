class CreateTrainerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :trainer do |t|
      t.string :name 
      t.integer :favorite_type_id
      t.integer :favorite_pokemon_id 
      t.string :hometown
    end
  end
end
