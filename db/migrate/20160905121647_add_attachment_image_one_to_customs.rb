class AddAttachmentImageOneToCustoms < ActiveRecord::Migration
  def self.up
    change_table :customs do |t|
      t.attachment :image_one
    end
  end

  def self.down
    remove_attachment :customs, :image_one
  end
end
