class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :kills
      t.integer :assists
      t.integer :deaths
      t.references :player, foreign_key: true
      t.references :map, foreign_key: true

      t.timestamps
    end
  end
end
