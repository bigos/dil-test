# == Schema Information
#
# Table name: versions
#
#  id             :integer          not null, primary key
#  item_type      :string(255)      not null
#  item_id        :integer          not null
#  event          :string(255)      not null
#  whodunnit      :string(255)
#  object         :text(65535)
#  created_at     :datetime
#  object_changes :text(65535)
#

class Version < ApplicationRecord
end
