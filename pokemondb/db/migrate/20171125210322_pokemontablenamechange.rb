class Pokemontablenamechange < ActiveRecord::Migration[5.1]
  def change
    rename_table :pokemon, :pokemons
  end
end
