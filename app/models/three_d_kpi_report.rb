# == Schema Information
#
# Table name: three_d_kpi_reports
#
#  id                  :integer          not null, primary key
#  project_id          :integer
#  first_3d_submission :date
#  count_3d_versions   :integer
#  created_at          :datetime
#  updated_at          :datetime
#

class ThreeDKpiReport < ApplicationRecord
end
