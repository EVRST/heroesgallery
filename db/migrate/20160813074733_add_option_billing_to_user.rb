class AddOptionBillingToUser < ActiveRecord::Migration
  def change
    add_column :users, :billint_as_shipping, :boolean
  end
end
