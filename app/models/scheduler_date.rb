# == Schema Information
#
# Table name: scheduler_dates
#
#  id                     :integer          not null, primary key
#  project_tu_junction_id :integer
#  from                   :date
#  to                     :date
#  currency               :decimal(10, )
#  days                   :integer
#  location               :string(255)
#

class SchedulerDate < ApplicationRecord
end
