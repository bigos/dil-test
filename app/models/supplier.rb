# == Schema Information
#
# Table name: suppliers
#
#  id                               :integer          not null, primary key
#  name                             :string(255)
#  main_telephone                   :string(255)
#  website                          :string(255)
#  address_line_1                   :string(255)
#  address_line_2                   :string(255)
#  zipcode                          :string(255)
#  cdm_approved_supplier            :boolean
#  overall_rating                   :integer          default(0)
#  principal_regions                :string(255)
#  payment_terms                    :integer
#  deposit                          :string(255)
#  warranty_period                  :string(255)
#  nda_uid                          :string(255)
#  nda_name                         :string(255)
#  contract_and_terms_uid           :string(255)
#  contract_and_terms_name          :string(255)
#  suitable_project_types           :string(255)
#  three_d_cad                      :string(255)
#  adhesive_and_tapes               :string(255)
#  assembly                         :string(255)
#  crates                           :string(255)
#  design                           :string(255)
#  electrics                        :string(255)
#  engineering                      :string(255)
#  fixtures_and_fittings            :string(255)
#  local_servicing                  :string(255)
#  lighting                         :string(255)
#  metal                            :string(255)
#  painting                         :string(255)
#  plastic_fabrication              :string(255)
#  print                            :string(255)
#  wood                             :string(255)
#  created_at                       :datetime
#  updated_at                       :datetime
#  fax_number                       :string(255)
#  three_d_print                    :string(255)
#  aluminium_extrusion              :string(255)
#  artwork                          :string(255)
#  injection_moulding               :string(255)
#  installation                     :string(255)
#  plastic_extrusion                :string(255)
#  vacuum_forming                   :string(255)
#  other_warranty_period            :string(255)
#  supplier_description             :text(65535)
#  services                         :string(255)
#  current_cdm_projects             :integer
#  all_cdm_projects                 :integer
#  user_id                          :integer
#  latitude                         :float(24)
#  longitude                        :float(24)
#  cdm_last_updated                 :string(255)
#  county_state_province            :string(255)
#  last_approval_request            :datetime
#  last_approval_request_sent_by_id :integer
#  location                         :string(255)
#  warehousing                      :string(255)
#

class Supplier < ApplicationRecord
end
