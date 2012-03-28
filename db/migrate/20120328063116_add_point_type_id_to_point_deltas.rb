class AddPointTypeIdToPointDeltas < ActiveRecord::Migration
  def change
    add_column :point_deltas, :point_type_id, :integer
  end
end
