class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :shipping
      t.decimal :total
      t.integer :order_status_id

      t.timestamps null: false
    end
  end
end
