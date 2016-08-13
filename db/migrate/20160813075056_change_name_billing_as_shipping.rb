class ChangeNameBillingAsShipping < ActiveRecord::Migration
  def change
  	rename_column :users, :billint_as_shipping, :billing_as_shipping
  end
end
