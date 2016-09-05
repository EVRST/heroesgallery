class AddAttachmentImageDownToCustoms < ActiveRecord::Migration
  def self.up
    change_table :customs do |t|
      t.attachment :image_down
    end
  end

  def self.down
    remove_attachment :customs, :image_down
  end
end
