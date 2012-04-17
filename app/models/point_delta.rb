class PointDelta < ActiveRecord::Base
  belongs_to :from_user, :class_name => 'User'
  belongs_to :to_user, :class_name => 'User'
  belongs_to :point_type
  
  after_create :add_to_balance
  
  def add_to_balance
    balance = PointBalance.where(:user_id => self.to_user.id,
      :point_type_id => self.point_type.id)
    if balance.empty?
      balance = PointBalance.create(:user_id => self.to_user.id,
        :point_type_id => self.point_type.id)
    else
      balance = balance.first
    end
    
    balance.amount += self.amount
    balance.save
  end
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

