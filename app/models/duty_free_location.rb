# == Schema Information
#
# Table name: duty_free_locations
#
#  id            :integer          not null, primary key
#  name          :string(255)      default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  location_type :string(255)      default("Airport"), not null
#  code          :string(255)      default(""), not null
#  city          :string(255)      default(""), not null
#  country       :string(255)      default(""), not null
#  region        :string(255)
#

class DutyFreeLocation < ApplicationRecord
  has_many :projects
end
