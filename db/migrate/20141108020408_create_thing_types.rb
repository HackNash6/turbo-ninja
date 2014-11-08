class CreateThingTypes < ActiveRecord::Migration
  def change
    create_table :thing_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
