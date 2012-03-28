class PointBalance < ActiveRecord::Base
  belongs_to :point_type
  belongs_to :user
end
