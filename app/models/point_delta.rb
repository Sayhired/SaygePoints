class PointDelta < ActiveRecord::Base
  belongs_to :from_user, :class_name => 'User'
  belongs_to :to_user, :class_name => 'User'
  belongs_to :point_type
end
