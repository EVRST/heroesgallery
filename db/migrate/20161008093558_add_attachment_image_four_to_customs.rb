class AddAttachmentImageFourToCustoms < ActiveRecord::Migration
  def self.up
    change_table :customs do |t|
      t.attachment :image_four
    end
  end

  def self.down
    remove_attachment :customs, :image_four
  end
end
