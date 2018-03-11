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
  establish_connection :external
  has_many :projects

  def self.location_type_options
    [['Any','']] + DutyFreeLocation.distinct.pluck(:location_type)
                     .collect { |x| [x, x] }
  end

  def self.region_options
    [['Any','']] + DutyFreeLocation.distinct.pluck( :region)
                     .collect { |x| [x, x] }
  end

  def self.location_options
    [['Any','']] + DutyFreeLocation.pluck( :name)
                     .collect { |x| [x, x] }
  end
end
