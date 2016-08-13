class AddShippingOptionToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :with_shipping, :boolean
  end
end
