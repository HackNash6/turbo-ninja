class AddThingIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :thing_id, :integer
  end
end
