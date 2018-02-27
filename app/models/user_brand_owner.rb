# == Schema Information
#
# Table name: user_brand_owners
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  brand_owner_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class UserBrandOwner < ApplicationRecord
end
