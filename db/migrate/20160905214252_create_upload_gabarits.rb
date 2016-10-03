class CreateUploadGabarits < ActiveRecord::Migration
  def change
    create_table :upload_gabarits do |t|
      t.integer :upload_id
      t.integer :gabarit_id

      t.timestamps null: false
    end
  end
end
