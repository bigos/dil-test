# == Schema Information
#
# Table name: projects
#
#  id                                  :integer          not null, primary key
#  brand_id                            :integer
#  name                                :string(255)
#  region                              :string(255)
#  terminal                            :string(255)
#  status                              :string(255)
#  shop_name                           :string(255)
#  install_date                        :date
#  latitude                            :float(24)
#  longitude                           :float(24)
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#  floor_plan_uid                      :string(255)
#  floor_plan_name                     :string(255)
#  airside_landside                    :string(255)
#  df_retailer_id                      :integer
#  video_id                            :string(255)
#  video_thumbnail_uid                 :string(255)
#  video_thumbnail_name                :string(255)
#  job_number                          :string(255)      not null
#  supplier_name                       :string(255)      default(""), not null
#  comments                            :text(65535)      not null
#  next_steps                          :text(65535)      not null
#  ce_date                             :date
#  brand_owner_comments                :text(65535)      not null
#  brand_owner_next_steps              :text(65535)      not null
#  project_status                      :string(255)      default(""), not null
#  snagging                            :boolean          default(FALSE), not null
#  three_d_completion_date             :date
#  design_intent_name                  :string(255)
#  design_intent_uid                   :string(255)
#  p2_brand_id                         :integer
#  support_brand_id                    :integer
#  fi                                  :string(255)      default("Not Required"), not null
#  account_manager_id                  :integer
#  procurement_manager_id              :integer
#  paid                                :boolean          default(FALSE), not null
#  design_agency_id                    :integer
#  duty_free_location_id               :integer
#  units_count                         :integer          default(0)
#  target_install_date                 :date
#  po_number                           :string(255)
#  toggl                               :boolean          default(TRUE), not null
#  internal_project_manager_id         :integer
#  project_engineer_id                 :integer
#  description                         :text(65535)
#  ss                                  :string(255)      default("Required"), not null
#  three_d                             :string(255)      default("Required"), not null
#  dd                                  :string(255)      default("Required"), not null
#  ce                                  :string(255)      default("Required"), not null
#  td                                  :string(255)      default("Required"), not null
#  po                                  :string(255)      default("Required"), not null
#  qc                                  :string(255)      default("Required"), not null
#  ir                                  :string(255)      default("Required"), not null
#  gr                                  :string(255)      default("Required"), not null
#  inv                                 :string(255)      default("Required"), not null
#  warranty_end_date                   :date
#  remove_date                         :date
#  brand_owner_client                  :boolean          default(TRUE)
#  client_id                           :integer
#  project_type                        :string(255)
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
#  goal_regional_rollout_description   :string(255)
#  goal_new_product_launch_description :string(255)
#  goal_rebranding_description         :string(255)
#  goal_event_related_description      :string(255)
#  goal_market_share_description       :string(255)
#  goal_emerging_market_description    :string(255)
#  goal_unit_relocation_description    :string(255)
#  goal_repair_maintenance_description :string(255)
#  goal_other_description              :string(255)
#  currency                            :string(255)
#  ce_val                              :decimal(10, )
#  cdm_cost                            :decimal(10, )
#  aw                                  :string(255)      default("Required"), not null
#  account_director_id                 :integer
#  client_project_manager_id           :integer
#  artwork_id                          :integer
#  design_id                           :integer
#  costings_id                         :integer
#  supplier_id                         :integer          default(0)
#  in_finance                          :boolean          default(FALSE), not null
#  before_photo_uid                    :string(255)
#  before_photo_name                   :string(255)
#  replacement                         :boolean
#  instore_project_id                  :integer
#  po_val                              :decimal(10, )
#  po_ce_val                           :decimal(10, )
#  po_date                             :datetime
#  cdm_handle_removals                 :boolean
#  old_target_install_date             :datetime
#  brief                               :string(255)      default("Required"), not null
#  old_three_d_completion_date         :datetime
#  tracking_units_count                :integer
#  goal_product_relaunch_description   :string(255)
#  finance_comments                    :text(65535)
#  billing_office                      :string(255)
#  installation_sign_off_photo_uid     :string(255)
#  installation_sign_off_photo_name    :string(255)
#  location_type                       :string(255)
#  aw_date                             :datetime
#  aw_status                           :string(255)
#  client_budget                       :decimal(10, )
#  budget_savings                      :decimal(10, )
#  completed                           :boolean
#  target_three_d_approval_date        :date
#  selected_3d_version                 :string(255)
#  client_brief_date                   :date
#  brand_owner_id                      :integer
#  live_date                           :date
#  testimonial                         :text(65535)
#  comments_from_client                :text(65535)
#  start_production                    :string(255)      default("Required")
#  target_start_production_date        :datetime
#  actual_start_production_date        :datetime
#  invoice_date                        :date
#

class Project < ApplicationRecord
  establish_connection :external
  belongs_to :duty_free_location
  has_many :tracking_units
  has_many :projects_tracking_units
end
