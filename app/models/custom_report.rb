# == Schema Information
#
# Table name: custom_reports
#
#  id            :integer          not null, primary key
#  link          :text(65535)
#  title         :string(255)      default(""), not null
#  description   :text(65535)
#  created_at    :datetime
#  updated_at    :datetime
#  report_type   :string(255)
#  fields        :string(255)
#  last_visited  :date
#  created_by_id :integer
#

class CustomReport < ApplicationRecord
end
