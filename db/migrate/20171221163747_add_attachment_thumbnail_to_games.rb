class AddAttachmentThumbnailToGames < ActiveRecord::Migration[5.1]
  def self.up
    change_table :games do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :games, :thumbnail
  end
end
