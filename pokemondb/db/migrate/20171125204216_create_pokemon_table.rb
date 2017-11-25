class CreatePokemonTable < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon do |t|
      t.string :name
      t.integer :type_id 
      t.integer :field_id 
      t.integer :egg_group_id 
      t.integer :post_evolution_id 
      t.integer :pre_evolution_id 
      
      t.timestamps
    end
  end
end
