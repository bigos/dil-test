# == Schema Information
#
# Table name: main_images
#
#  id                  :integer          not null, primary key
#  main_imageable_id   :integer
#  main_imageable_type :string(255)
#  position            :integer
#  image_name          :string(255)      not null
#  image_uid           :string(255)      not null
#  caption             :text(65535)
#  created_at          :datetime
#  updated_at          :datetime
#  visible             :boolean          default(TRUE)
#

class MainImage < ApplicationRecord
end
