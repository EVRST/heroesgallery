class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.boolean :horizontal
      t.boolean :plexi
      t.integer :hauteur
      t.integer :largeur
      t.text :note
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
