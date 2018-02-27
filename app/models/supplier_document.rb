# == Schema Information
#
# Table name: supplier_documents
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  document   :string(255)
#  desc       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SupplierDocument < ApplicationRecord
end
