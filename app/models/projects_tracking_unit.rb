# == Schema Information
#
# Table name: projects_tracking_units
#
#  id               :integer          not null, primary key
#  project_id       :integer
#  tracking_unit_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  date_conflict    :boolean          default(FALSE)
#

class ProjectsTrackingUnit < ApplicationRecord
  establish_connection :external
  belongs_to :tracking_unit
  belongs_to :project
  has_one :scheduler_date, foreign_key: 'project_tu_junction_id'

end
