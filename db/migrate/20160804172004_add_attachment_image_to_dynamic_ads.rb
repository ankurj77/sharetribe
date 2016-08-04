class AddAttachmentImageToDynamicAds < ActiveRecord::Migration
  def self.up
    change_table :dynamic_ads do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dynamic_ads, :image
  end
end
