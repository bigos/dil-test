# == Schema Information
#
# Table name: campaigns
#
#  id             :integer          not null, primary key
#  brand_owner_id :integer
#  name           :string(255)
#  archived       :boolean          default(FALSE)
#  created_at     :datetime
#  updated_at     :datetime
#

class Campaign < ApplicationRecord
end
