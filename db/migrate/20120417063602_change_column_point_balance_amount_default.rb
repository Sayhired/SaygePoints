class ChangeColumnPointBalanceAmountDefault < ActiveRecord::Migration
  def change
    change_column :point_balances, :amount, :integer, :default => 0
  end
end
