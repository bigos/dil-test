# == Schema Information
#
# Table name: zones
#
#  id         :integer          not null, primary key
#  project_id :integer
#  zone       :string(255)
#  df_name    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Zone < ApplicationRecord
end
