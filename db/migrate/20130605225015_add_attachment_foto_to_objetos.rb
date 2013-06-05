class AddAttachmentFotoToObjetos < ActiveRecord::Migration
  def self.up
    change_table :objetos do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :objetos, :foto
  end
end
