# == Schema Information
#
# Table name: design_agencies
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  address_line_1       :string(255)
#  address_line_2       :string(255)
#  city                 :string(255)
#  country              :string(255)
#  contact_first_name   :string(255)
#  contact_last_name    :string(255)
#  contact_phone_number :string(255)
#  contact_email        :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class DesignAgency < ApplicationRecord
end
