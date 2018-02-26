# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  imageable_id   :integer
#  imageable_type :string(255)
#  position       :integer
#  image_name     :string(255)
#  image_uid      :string(255)
#  caption        :text(65535)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  image_rotation :integer          default(0)
#  visible        :boolean          default(TRUE)
#

class Image < ApplicationRecord
end
