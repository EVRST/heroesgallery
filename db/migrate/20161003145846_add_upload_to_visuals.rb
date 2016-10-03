class AddUploadToVisuals < ActiveRecord::Migration
  def change
    add_column :visuals, :is_upload, :boolean
    add_column :visuals, :upload_id, :integer
  end
end
