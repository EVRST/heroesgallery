class AddAttachmentMiniatureToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :miniature
    end
  end

  def self.down
    remove_attachment :books, :miniature
  end
end
