class AddAttachmentImageToLikemovies < ActiveRecord::Migration
  def self.up
    change_table :likemovies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :likemovies, :image
  end
end
