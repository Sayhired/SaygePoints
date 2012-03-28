class CreatePointDelta < ActiveRecord::Migration
  def change
    create_table :point_deltas do |t|
      t.integer :amount
      t.text :reason
      t.integer :from_user_id
      t.integer :to_user_id

      t.timestamps
    end
  end
end
