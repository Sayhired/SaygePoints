class PointType < ActiveRecord::Base
  has_many :point_deltas
  has_many :point_balances
end
