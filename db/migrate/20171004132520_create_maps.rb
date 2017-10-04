class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :exhibition_name
      t.integer :map_type

      t.timestamps
    end
  end
end
