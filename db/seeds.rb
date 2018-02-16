# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#set filepaths in arrays
emoticon_tiles = ['./public/images/tile1.png', './public/images/tile2.png', './public/images/tile3.png', './public/images/tile4.png', './public/images/tile5.png', './public/images/tile6.png', './public/images/tile7.png', './public/images/tile8.png']
programming_logo_tiles = ['./public/images/css3-full.svg', './public/images/github-badge.svg', './public/images/html5.svg', './public/images/js-badge.svg', './public/images/python.svg', './public/images/react.svg', './public/images/ruby-on-rails.svg', './public/images/ruby.svg']

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
