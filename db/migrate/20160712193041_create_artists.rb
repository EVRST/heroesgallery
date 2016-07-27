class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.text :presentation_fr
      t.text :presentation_en
      t.text :presentation_nl

      t.timestamps null: false
    end
  end
end
