# == Schema Information
#
# Table name: filters
#
#  id                               :integer          not null, primary key
#  job_number                       :integer
#  job_number_exact                 :integer
#  name                             :string(255)
#  status                           :string(255)
#  in_finance                       :string(255)
#  completed                        :string(255)
#  brand_owner_id_filter            :string(255)
#  brand_owner_client               :string(255)
#  client_id                        :string(255)
#  brand_id                         :string(255)
#  project_campaigns_campaign_id    :string(255)
#  df_retailer_id                   :string(255)
#  region                           :string(255)
#  duty_free_location_location_type :string(255)
#  duty_free_location_id            :string(255)
#  project_status_contain           :string(255)
#  targetstall_date                 :string(255)
#  billing_office                   :string(255)
#  account_director_id              :string(255)
#  client_project_manager_id        :string(255)
#  internal_project_manager_id      :string(255)
#  project_engineer_id              :string(255)
#  artwork_id                       :string(255)
#  design_id                        :string(255)
#  costings_id                      :string(255)
#  supplier_id                      :string(255)
#  account_manager_id               :string(255)
#  procurement_manager_id           :string(255)
#  design_agency_id                 :string(255)
#  next_steps                       :string(255)
#  project_type                     :string(255)
#  po_number                        :string(255)
#  testimonial2                     :string(255)
#  po_date                          :string(255)
#  target_three_d_approval_date     :string(255)
#  install_date                     :string(255)
#  remove_date                      :string(255)
#  warranty_end_date                :string(255)
#  three_d_completion_date          :string(255)
#  ce_date                          :string(255)
#  aw_date                          :string(255)
#  live_date                        :string(255)
#  brand_owner_next_steps           :string(255)
#  create_at_filter                 :string(255)
#  in_trouble                       :string(255)
#  from_admin_side                  :string(255)
#  from_client_side                 :string(255)
#  created_at                       :datetime
#  updated_at                       :datetime
#

class Filter < ApplicationRecord
end
