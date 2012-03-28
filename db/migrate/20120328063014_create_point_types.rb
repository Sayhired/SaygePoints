class CreatePointTypes < ActiveRecord::Migration
  def change
    create_table :point_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
