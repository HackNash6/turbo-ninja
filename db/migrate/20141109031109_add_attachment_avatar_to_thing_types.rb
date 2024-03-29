class AddAttachmentAvatarToThingTypes < ActiveRecord::Migration
  def self.up
    change_table :thing_types do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :thing_types, :avatar
  end
end
