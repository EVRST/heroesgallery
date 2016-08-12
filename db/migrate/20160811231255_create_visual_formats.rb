class CreateVisualFormats < ActiveRecord::Migration
  def change
    create_table :visual_formats do |t|
      t.integer :visual_id
      t.integer :format_id

      t.timestamps null: false
    end
  end
end
