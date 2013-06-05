class AddFotoToObjeto < ActiveRecord::Migration
  def change
    add_column :objetos, :foto, :file
  end
end
