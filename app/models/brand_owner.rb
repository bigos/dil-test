# == Schema Information
#
# Table name: brand_owners
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  logo_uid              :string(255)
#  logo_name             :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  client                :boolean          default(TRUE), not null
#  toggl                 :boolean
#  prez_intro_image_uid  :string(255)
#  prez_intro_image_name :string(255)
#  archive               :boolean          default(FALSE)
#  users_list            :text(65535)
#

class BrandOwner < ApplicationRecord
  has_many :brands
end
