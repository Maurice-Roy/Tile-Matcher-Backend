class CreateTilesets < ActiveRecord::Migration[5.1]
  def change
    create_table :tilesets do |t|
      t.integer :high_score
      t.string :high_score_name
      t.string :name
      t.timestamps
    end
  end
end
