# == Schema Information
#
# Table name: project_campaigns
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  campaign_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class ProjectCampaign < ApplicationRecord
end
