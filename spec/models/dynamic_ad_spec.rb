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

require 'rails_helper'

RSpec.describe DynamicAd, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
