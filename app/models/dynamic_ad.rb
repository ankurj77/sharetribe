# == Schema Information
#
# Table name: dynamic_ads
#
#  id                 :integer          not null, primary key
#  link               :string(255)
#  title              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class DynamicAd < ActiveRecord::Base

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_presence_of :title, :link, :image
end
