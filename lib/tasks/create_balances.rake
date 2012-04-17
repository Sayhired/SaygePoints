task :create_balances => :environment do
  User.all.each do |user|
    PointDelta.where(:to_user_id => user.id).each do |delta|
      point_type = delta.point_type
      balance = PointBalance.where(:user_id => user.id,
        :point_type_id => point_type.id)
        
      if balance.empty?
        balance = PointBalance.create(:user_id => user.id,
          :point_type_id => point_type.id)
      else
        balance = balance.first
      end
  
      balance.amount += delta.amount
      balance.save
    end
  end
end