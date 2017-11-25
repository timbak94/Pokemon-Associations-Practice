class CreateTypesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :name
    end
  end
end
