class AddAttachmentImageTwoToCustoms < ActiveRecord::Migration
  def self.up
    change_table :customs do |t|
      t.attachment :image_two
    end
  end

  def self.down
    remove_attachment :customs, :image_two
  end
end
