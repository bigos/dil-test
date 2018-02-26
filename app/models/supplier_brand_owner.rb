# == Schema Information
#
# Table name: supplier_brand_owners
#
#  id             :integer          not null, primary key
#  supplier_id    :integer
#  brand_owner_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class SupplierBrandOwner < ApplicationRecord
end
