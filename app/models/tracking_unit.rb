# == Schema Information
#
# Table name: tracking_units
#
#  id                         :integer          not null, primary key
#  unit_type                  :string(255)
#  asset_id                   :string(255)
#  unit_description           :text(65535)
#  unit_height                :float(24)
#  unit_width                 :float(24)
#  unit_depth                 :float(24)
#  asset_sticker_id           :string(255)
#  asset_sticker_image_name   :string(255)
#  asset_sticker_image_uid    :string(255)
#  barcode_name               :string(255)
#  barcode_uid                :string(255)
#  unit_value                 :float(24)
#  project_id                 :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  main_image_uid             :string(255)
#  main_image_name            :string(255)
#  brand_id                   :integer
#  weight                     :float(24)
#  unit_type_description      :text(65535)
#  conditions                 :integer
#  repair_description         :text(65535)
#  pallet                     :decimal(5, 2)
#  removal_method             :string(255)
#  days_warehoused            :integer
#  days_in_store              :integer
#  booking_sum                :integer
#  future_booking             :integer
#  date_conflict              :boolean          default(FALSE)
#  main_image_date            :datetime
#  current_duty_free_location :string(255)
#  removal_comments           :string(255)
#  last_date_used             :date
#  main_image_chosen_id       :integer
#

class TrackingUnit < ApplicationRecord
  belongs_to :brand
  belongs_to :project

  def region
    project.duty_free_location.region
  end
end
