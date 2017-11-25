class CreateGymLeaderTable < ActiveRecord::Migration[5.1]
  def change
    create_table :gym_leader do |t|
      t.string :name 
      t.integer :trainer_id 
      t.integer :region_id 
      
    end
  end
end
