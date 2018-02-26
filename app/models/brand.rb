# == Schema Information
#
# Table name: brands
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  brand_owner_id :integer
#  description    :text(65535)
#

class Brand < ApplicationRecord
end
