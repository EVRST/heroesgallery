class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :order_item_id
      t.integer :buyer_id
      t.integer :visual_id

      t.timestamps null: false
    end
  end
end
