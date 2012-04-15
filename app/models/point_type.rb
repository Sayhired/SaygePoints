class PointType < ActiveRecord::Base
  has_many :point_deltas
  has_many :point_balances
end
# == Schema Information
#
# Table name: point_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

