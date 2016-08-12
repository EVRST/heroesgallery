class ChangeLinkToFormat < ActiveRecord::Migration
  def change
  	rename_column :visual_formats, :format_id, :gabarit_id
  	rename_column :dimensions, :format_id, :gabarit_id
  end
end
