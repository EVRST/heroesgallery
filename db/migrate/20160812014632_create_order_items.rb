class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :visual_id
      t.integer :order_id
      t.decimal :unit_price
      t.integer :quantity
      t.decimal :total_price
      t.integer :dimension_id
      t.boolean :alu
      t.boolean :shipping

      t.timestamps null: false
    end
  end
end
