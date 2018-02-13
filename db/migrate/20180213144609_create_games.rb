class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.rows :integer
      t.columns :integer
      t.timestamps
    end
  end
end
