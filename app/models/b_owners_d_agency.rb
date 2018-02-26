# == Schema Information
#
# Table name: b_owners_d_agencies
#
#  id               :integer          not null, primary key
#  brand_owner_id   :integer
#  design_agency_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class BOwnersDAgency < ApplicationRecord
end
