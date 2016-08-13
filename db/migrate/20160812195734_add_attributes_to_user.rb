class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email_invite, :string
    add_column :users, :shipping_street, :string
    add_column :users, :shipping_number, :string
    add_column :users, :shipping_zipcode, :string
    add_column :users, :shipping_city, :string
    add_column :users, :shipping_telephone, :string
    add_column :users, :billing_street, :string
    add_column :users, :billing_number, :string
    add_column :users, :billing_zipcode, :string
    add_column :users, :billing_city, :string
    add_column :users, :billing_telephone, :string
    add_column :users, :lead_source, :string
  end
end
