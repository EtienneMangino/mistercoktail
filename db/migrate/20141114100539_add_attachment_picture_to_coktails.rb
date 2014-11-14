class AddAttachmentPictureToCoktails < ActiveRecord::Migration
  def self.up
    change_table :coktails do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :coktails, :picture
  end
end
