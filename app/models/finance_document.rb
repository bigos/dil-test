# == Schema Information
#
# Table name: finance_documents
#
#  id            :integer          not null, primary key
#  document_type :string(255)      default(""), not null
#  project_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  document      :string(255)
#

class FinanceDocument < ApplicationRecord
end
