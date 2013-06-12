class AddAttachmentFotoToInspecoes < ActiveRecord::Migration
  def self.up
    change_table :inspecoes do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :inspecoes, :foto
  end
end
