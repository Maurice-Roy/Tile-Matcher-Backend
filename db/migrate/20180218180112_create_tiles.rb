class CreateTiles < ActiveRecord::Migration[5.1]
  def change
    create_table :tiles do |t|
      t.string :path
      t.belongs_to :tileset, foreign_key: true
      t.timestamps
    end
  end
end
