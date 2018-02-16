# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#set filepaths in arrays
emoticon_tiles = ['https://i.imgur.com/Ozx0mt0.png', 'https://i.imgur.com/FaTISEb.png', 'https://i.imgur.com/hkJHn6T.png', 'https://i.imgur.com/zNy05pT.png', 'https://i.imgur.com/Q7xoog4.png', 'https://i.imgur.com/yRGERDb.png', 'https://i.imgur.com/8OrVKqV.png', 'https://i.imgur.com/tSHzlvr.png']
programming_logo_tiles = ['https://svgshare.com/i/5Zp.svg', 'https://svgshare.com/i/5_U.svg', 'https://svgshare.com/i/5Zq.svg', 'https://svgshare.com/i/5_L.svg', 'https://svgshare.com/i/5Yt.svg', 'https://svgshare.com/i/5_B.svg', 'https://svgshare.com/i/5Yu.svg', 'https://svgshare.com/i/5ZE.svg']

#create new tilesets (not saved yet)
emoticon_tileset = Tileset.new
programming_logo_tileset = Tileset.new
emoticon_tileset.name = 'Emoticons'
programming_logo_tileset.name = 'Programming Logos'
emoticon_tileset.save
programming_logo_tileset.save

#populate tilesets
emoticon_tiles.each do |tile_path|
  new_tile = Tile.new
  new_tile.path = tile_path
  new_tile.tileset_id = emoticon_tileset.id
  new_tile.save
end

programming_logo_tiles.each do |tile_path|
  new_tile = Tile.new
  new_tile.path = tile_path
  new_tile.tileset_id = programming_logo_tileset.id
  new_tile.save
end
