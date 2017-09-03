class AddAttachmentUserImageToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :user_image
    end
  end

  def self.down
    remove_attachment :profiles, :user_image
  end
end
