class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :uuid
      t.boolean :isMissing, :default => false
      t.float :latitude
      t.float :longitude
      t.float :precision
      t.string :description
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
