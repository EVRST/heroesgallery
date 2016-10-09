class AddElementsToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :price, :integer
    add_column :purchases, :dimension_id, :integer
    add_column :purchases, :finish_id, :integer
  end
end
