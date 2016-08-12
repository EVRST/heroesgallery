class AddFormatIdToDimension < ActiveRecord::Migration
  def change
    add_column :dimensions, :format_id, :integer
  end
end
