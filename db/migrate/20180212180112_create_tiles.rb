class CreateTiles < ActiveRecord::Migration[5.1]
  def change
    create_table :tiles do |t|
      t.content :string
      t.timestamps
    end
  end
end
