class AddAttachmentImageThreeToCustoms < ActiveRecord::Migration
  def self.up
    change_table :customs do |t|
      t.attachment :image_three
    end
  end

  def self.down
    remove_attachment :customs, :image_three
  end
end
