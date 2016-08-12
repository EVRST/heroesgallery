class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.string :name
      t.integer :hauteur
      t.integer :largeur

      t.timestamps null: false
    end
  end
end
