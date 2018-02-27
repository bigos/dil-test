# == Schema Information
#
# Table name: completed_job_reports
#
#  id                                  :integer          not null, primary key
#  project_id                          :integer
#  goal_new_cdm_location               :boolean          default(FALSE), not null
#  goal_first_cdm_project              :boolean          default(FALSE), not null
#  goal_worldwide_rollout              :boolean          default(FALSE), not null
#  goal_regional_rollout               :boolean          default(FALSE), not null
#  goal_new_product_launch             :boolean          default(FALSE), not null
#  goal_product_relaunch               :boolean          default(FALSE), not null
#  goal_rebranding                     :boolean          default(FALSE), not null
#  goal_event_related                  :boolean          default(FALSE), not null
#  goal_market_share                   :boolean          default(FALSE), not null
#  goal_emerging_market                :boolean          default(FALSE), not null
#  goal_unit_relocation                :boolean          default(FALSE), not null
#  goal_repair_maintenance             :boolean          default(FALSE), not null
#  goal_other                          :boolean          default(FALSE), not null
#  main_rollout_sites                  :string(255)
#  new_brand_aspects                   :string(255)
#  highlights                          :text(65535)
#  improvements                        :text(65535)
#  mfg_location                        :string(255)
#  special_considerations              :text(65535)
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#  goal_regional_rollout_description   :string(255)
#  goal_new_product_launch_description :string(255)
#  goal_prodict_relaunch_description   :string(255)
#  goal_rebranding_description         :string(255)
#  goal_event_related_description      :string(255)
#  goal_market_share_description       :string(255)
#  goal_emerging_market_description    :string(255)
#  goal_unit_relocation_description    :string(255)
#  goal_repair_maintenance_description :string(255)
#  goal_other_description              :string(255)
#  completed_project_photo_uid         :string(255)
#  completed_project_photo_name        :string(255)
#

class CompletedJobReport < ApplicationRecord
end
