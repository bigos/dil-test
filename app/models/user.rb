# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :string(255)      default("client"), not null
#  name                   :string(255)      default(""), not null
#  position               :string(255)      default(""), not null
#  nickname               :string(255)
#  company_name           :string(255)
#  tooltips               :boolean          default(FALSE), not null
#  inactive               :boolean
#  brand_owner_list       :text(65535)
#

class User < ApplicationRecord
  # user is on the different database defined in authentication section
  # this is the solution of my problem
  establish_connection :authentication

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
