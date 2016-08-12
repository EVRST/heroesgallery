class CreateVisualGabarits < ActiveRecord::Migration
  def change
    create_table :visual_gabarits do |t|
      t.integer :visual_id
      t.integer :gabarit_id

      t.timestamps null: false
    end
  end
end
