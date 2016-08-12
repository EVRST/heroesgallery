class CreateGabarits < ActiveRecord::Migration
  def change
    create_table :gabarits do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
