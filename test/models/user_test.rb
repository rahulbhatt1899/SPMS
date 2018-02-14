# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  role                   :string
#  name                   :string
#  roll_no                :integer
#  branch                 :string
#  year                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  image_url              :text
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
