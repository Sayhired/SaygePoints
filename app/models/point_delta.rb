class PointDelta < ActiveRecord::Base
  belongs_to :from_user, :class_name => 'User'
  belongs_to :to_user, :class_name => 'User'
  belongs_to :point_type
end
# == Schema Information
#
# Table name: point_deltas
#
#  id            :integer         not null, primary key
#  amount        :integer
#  reason        :text
#  from_user_id  :integer
#  to_user_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#  point_type_id :integer
#

