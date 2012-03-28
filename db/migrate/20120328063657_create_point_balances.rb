class CreatePointBalances < ActiveRecord::Migration
  def change
    create_table :point_balances do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :point_type_id

      t.timestamps
    end
  end
end
