class AddAttachmentMiniatureToVisuals < ActiveRecord::Migration
  def self.up
    change_table :visuals do |t|
      t.attachment :miniature
    end
  end

  def self.down
    remove_attachment :visuals, :miniature
  end
end
