# == Schema Information
#
# Table name: custom_report_users
#
#  id               :integer          not null, primary key
#  custom_report_id :integer
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CustomReportUser < ApplicationRecord
end
