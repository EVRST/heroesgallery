class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.string :name
      t.integer :price
      t.integer :artist_id
      t.boolean :is_drawing
      t.boolean :is_picture

      t.timestamps null: false
    end
  end
end
