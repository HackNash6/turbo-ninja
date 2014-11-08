class AddThingTypeIdToThings < ActiveRecord::Migration
  def change
    add_column :things, :thing_type_id, :integer
  end
end
