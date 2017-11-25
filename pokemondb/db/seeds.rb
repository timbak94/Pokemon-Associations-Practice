# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do
  GymLeader.delete_all
  Region.delete_all
  Pokemon.delete_all
  Trainer.delete_all
  Type.delete_all
  Move.delete_all
  
  types = %w(fire water grass electric flying ghost bug dragon normal)
  i = 1 
  types.each do |el|
    Type.create(id: i, name: el)
    i += 1 
  end 
  
  Move.create(id: 1, name: 'flamethrower', type_id: 1)
  Move.create(id: 2, name: 'hydro pump', type_id: 2)
  Move.create(id: 3, name: 'solar beam', type_id: 3) 
  Move.create(id: 4, name: 'thunder bolt', type_id: 4)
  Move.create(id: 5, name: 'aero blast', type_id: 5)
  Move.create(id: 6, name: 'shadow ball', type_id: 6)
  Move.create(id: 7, name: 'x-scissor', type_id: 7)
  Move.create(id: 8, name: 'fire blast', type_id: 1)
  Move.create(id: 9, name: 'water gun', type_id: 2)
  Move.create(id: 10, name: 'leaf blade', type_id: 3) 
  Move.create(id: 11, name: 'volt tackle', type_id: 4)
  Move.create(id: 12, name: 'ominous wind', type_id: 6)
  Move.create(id: 13, name: 'u-turn', type_id: 7)
  Move.create(id: 14, name: 'draco meteor', type_id: 8)
  Move.create(id: 15, name: 'super fang', type_id: 9)
  
  
  Region.create(id: 1, name: 'Kanto', champion_id: 1)
  Region.create(id: 2, name: 'Unova', champion_id: 2)
  
  Trainer.create(id: 1, name: 'Red', favorite_type_id: 4, favorite_pokemon_id: 2, hometown: 'Pallet')
  Trainer.create(id: 2, name: 'N', favorite_type_id: 8, favorite_pokemon_id: 4, hometown: 'Unkown')
  
  Pokemon.create(id: 1, name: 'Pichu', type_id: 4, region_id: 1, post_evolution_id: 2, pre_evolution_id: nil)
  Pokemon.create(id: 2, name: 'Pikachu', type_id: 4, region_id: 1, post_evolution_id: 3, pre_evolution_id: 1)
  Pokemon.create(id: 3, name: 'Raichu', type_id: 4, region_id: 1, post_evolution_id: nil, pre_evolution_id: 2)
  Pokemon.create(id: 4, name: 'Zeckrom', type_id: 8, region_id: 2, post_evolution_id: nil, pre_evolution_id: nil)
  Pokemon.create(id: 5, name: 'Scyther', type_id: 7, region_id: 1, post_evolution_id: 6, pre_evolution_id: nil)
  Pokemon.create(id: 6, name: 'Scizor', type_id: 7, region_id: 1, post_evolution_id: nil, pre_evolution_id: 6)
  Pokemon.create(id: 7, name: 'Charizard', type_id: 1, region_id: 1, post_evolution_id: nil, pre_evolution_id: 8)
  Pokemon.create(id: 8, name: 'Charmeleon', type_id: 1, region_id: 1, post_evolution_id: 7, pre_evolution_id: 9)
  Pokemon.create(id: 9, name: 'Charmander', type_id: 1, region_id: 1, post_evolution_id: 8, pre_evolution_id: 7)
  Pokemon.create(id: 10, name: 'Oshawott', type_id: 2, region_id: 2, post_evolution_id: 11, pre_evolution_id: nil)
  Pokemon.create(id: 11, name: 'Dewott', type_id: 2, region_id: 2, post_evolution_id: 12, pre_evolution_id: 10)
  Pokemon.create(id: 12, name: 'Samurott', type_id: 2, region_id: 2, post_evolution_id: nil, pre_evolution_id: 11)
  Pokemon.create(id: 13, name: 'Oddish', type_id: 3, region_id: 1, post_evolution_id: 13, pre_evolution_id: nil)
  Pokemon.create(id: 14, name: 'Gloom', type_id: 3, region_id: 1, post_evolution_id: 14, pre_evolution_id: 12)
  Pokemon.create(id: 15, name: 'Vileplume', type_id: 3, region_id: 1, post_evolution_id: nil, pre_evolution_id: 13)
  Pokemon.create(id: 16, name: 'Bellossom', type_id: 3, region_id: 1, post_evolution_id: nil, pre_evolution_id: 13)
  Pokemon.create(id: 17, name: 'Pidgy', type_id: 5, region_id: 1, post_evolution_id: 17, pre_evolution_id: nil)
  Pokemon.create(id: 18, name: 'Pidgeotto', type_id: 5, region_id: 1, post_evolution_id: 18, pre_evolution_id: 16)
  Pokemon.create(id: 19, name: 'Pidgeot', type_id: 5, region_id: 1, post_evolution_id: nil, pre_evolution_id: 17)
  Pokemon.create(id: 20, name: 'Gastly', type_id: 6, region_id: 1, post_evolution_id: 20, pre_evolution_id: nil)
  Pokemon.create(id: 21, name: 'Haunter', type_id: 6, region_id: 1, post_evolution_id: 21, pre_evolution_id: 19)
  Pokemon.create(id: 22, name: 'Gengar', type_id: 6, region_id: 1, post_evolution_id: nil, pre_evolution_id: 20)
  Pokemon.create(id: 23, name: 'Axew', type_id: 8, region_id: 2, post_evolution_id: 23, pre_evolution_id: nil)
  Pokemon.create(id: 24, name: 'Fraxure', type_id: 8, region_id: 2, post_evolution_id: 24, pre_evolution_id: 22)
  Pokemon.create(id: 25, name: 'Haxorus', type_id: 8, region_id: 2, post_evolution_id: nil, pre_evolution_id: 23)
  Pokemon.create(id: 26, name: 'Psyduck', type_id: 2, region_id: 1, post_evolution_id: 26, pre_evolution_id: nil)
  Pokemon.create(id: 27, name: 'Golduk', type_id: 2, region_id: 1, post_evolution_id: nil, pre_evolution_id: 25)
  Pokemon.create(id: 28, name: 'Rotom', type_id: 6, region_id: 2, post_evolution_id: nil, pre_evolution_id: nil)
  Pokemon.create(id: 29, name: 'Rattata', type_id: 9, region_id: 1, post_evolution_id: nil, pre_evolution_id: nil )
  
  Trainer.create(id: 3, name: 'Tim Bak', favorite_type_id: 6, favorite_pokemon_id: 27, hometown: 'Plainview')
  Trainer.create(id: 4, name: 'Iris', favorite_type_id: 8, favorite_pokemon_id: 24, hometown: 'Opelucid')
  Trainer.create(id: 5, name: 'Youngster Joey', favorite_type_id: 9, favorite_pokemon_id: 28, hometown: 'Pallet')
  Trainer.create(id: 6, name: 'Erika', favorite_type_id: 3, favorite_pokemon_id: 13, hometown: 'Celadon')
  Trainer.create(id: 7, name: 'Agatha', favorite_type_id: 6, favorite_pokemon_id: 21, hometown: 'Lavender')
  Trainer.create(id: 8, name: 'Misty', favorite_type_id: 2, favorite_pokemon_id: 25, hometown: 'Cerulean')
  Trainer.create(id: 9, name: 'Birdkeeper Rick', favorite_type_id: 5, favorite_pokemon_id: 18, hometown: 'Route 3')
  Trainer.create(id: 10, name: 'Burgh', favorite_type_id: 7, favorite_pokemon_id: 6, hometown: 'Castelia')
  Trainer.create(id: 11, name: 'Blue', favorite_type_id: 1, favorite_pokemon_id: 7, hometown: 'Pallet')
  
  GymLeader.create(id: 1, name: 'Iris', trainer_id: 4, region_id: 2)
  GymLeader.create(id: 2, name: 'Erika', trainer_id: 6, region_id: 1)
  GymLeader.create(id: 3, name: 'Misty', trainer_id: 8, region_id: 1)
  GymLeader.create(id: 4, name: 'Burgh', trainer_id: 10, region_id: 2)
  
end 
  
  
  
  
  
  
  

  
  
  
  
  
  