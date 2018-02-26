# == Schema Information
#
# Table name: ratings
#
#  id                  :integer          not null, primary key
#  supplier_id         :integer
#  user_id             :integer
#  costs               :integer
#  english_proficiency :integer
#  deadline_adherence  :integer
#  quality_durability  :integer
#  relationship        :integer
#  created_at          :datetime
#  updated_at          :datetime
#  comments            :text(65535)
#  project_job_number  :string(255)
#

class Rating < ApplicationRecord
end
