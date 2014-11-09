class RemoveLocationFromThing < ActiveRecord::Migration
  def change
    remove_column :things, :latitude, :float
    remove_column :things, :longitude, :float
    remove_column :things, :precision, :float
  end
end
