# == Schema Information
#
# Table name: df_retailers
#
#  id         :integer          not null, primary key
#  name       :string(255)      default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DfRetailer < ApplicationRecord
end
