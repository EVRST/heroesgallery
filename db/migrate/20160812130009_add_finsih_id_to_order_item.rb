class AddFinsihIdToOrderItem < ActiveRecord::Migration
  def change
    add_column :order_items, :finish_id, :integer
  end
end
