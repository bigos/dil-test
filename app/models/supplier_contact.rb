# == Schema Information
#
# Table name: supplier_contacts
#
#  id                   :integer          not null, primary key
#  supplier_id          :integer
#  first_name           :string(255)
#  last_name            :string(255)
#  position             :string(255)      default(""), not null
#  email                :string(255)
#  mobile_phone         :string(255)
#  skype                :string(255)
#  local_address_line_1 :string(255)
#  local_address_line_2 :string(255)
#  local_city           :string(255)
#  local_region         :string(255)
#  local_country        :string(255)
#  local_zip_code       :string(255)
#  inactive             :boolean
#  different_address    :boolean
#  created_at           :datetime
#  updated_at           :datetime
#  title                :string(255)
#

class SupplierContact < ApplicationRecord
end
