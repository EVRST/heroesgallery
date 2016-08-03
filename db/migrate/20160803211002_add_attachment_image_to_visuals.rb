class AddAttachmentImageToVisuals < ActiveRecord::Migration
  def self.up
    change_table :visuals do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :visuals, :image
  end
end
