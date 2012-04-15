class PointBalance < ActiveRecord::Base
  belongs_to :point_type
  belongs_to :user
end
# == Schema Information
#
# Table name: point_balances
#
#  id            :integer         not null, primary key
#  amount        :integer
#  user_id       :integer
#  point_type_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

